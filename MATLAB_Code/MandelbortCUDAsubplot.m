clc
close all

maxIterations = 500;
gridSize = 2000;
xlim = [-1.5, 0.6];
ylim = [ -1.2, 1.2];
%%%% Load the kernel
cudaFilename = 'pctdemo_processMandelbrotElement.cu';
ptxFilename = ['pctdemo_processMandelbrotElement.',parallel.gpu.ptxext];
kernel = parallel.gpu.CUDAKernel(ptxFilename, cudaFilename);

%%%% Setup
t = tic();
x = gpuArray.linspace(xlim(1), xlim(2), gridSize);
y = gpuArray.linspace(ylim(1), ylim(2), gridSize);
[xGrid,yGrid] = meshgrid(x, y);

%%%% Make sure we have sufficient blocks to cover all of the locations
numElements = numel(xGrid);
kernel.ThreadBlockSize = [kernel.MaxThreadsPerBlock,1,1];
kernel.GridSize = [ceil(numElements/kernel.MaxThreadsPerBlock),1];

%%%% Call the kernel
count = zeros(size(xGrid), 'gpuArray');
count = feval(kernel, count, xGrid, yGrid, maxIterations, numElements);

%%%% Show
count = gather(count); % Fetch the data back from the GPU
gpuCUDAKernelTime = toc(t);
% figure
% imagesc(x, y, count)
% axis off
% title(sprintf('%1.3fsecs (GPU CUDAKernel) = %1.1fx faster', ...
%     gpuCUDAKernelTime, cpuTime/gpuCUDAKernelTime));
% colorm=["parula","jet","hsv","hot","cool","spring","summer","autumn","winter"];
colorm= ["gray","bone","copper","pink","lines","colorcube","prism","flag","white"];
for n=1:9
    subplot(3,3,n)
%     figure
    imagesc(x, y, count)
    colormap(gca,colorm(n))
    title(colorm(n))
    axis off
end

