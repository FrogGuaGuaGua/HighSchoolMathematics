clc
close all

maxIterations = 500;
gridSize = 1000;
xlim = [-1.5, 0.6];
ylim = [ -1.2, 1.2];
%% ------CPU计算------
%%%% Setup
% t = tic();
% x = linspace(xlim(1), xlim(2), gridSize);
% y = linspace(ylim(1), ylim(2), gridSize);
% [xGrid,yGrid] = meshgrid(x, y);
% z0 = xGrid + 1i*yGrid;
% count = ones(size(z0));
% 
% %%%% Calculate
% z = z0;
% for n = 0:maxIterations
%     z = z*z + z0;
%     inside = abs(z)<=2;
%     count = count + inside;
% end
% count = log(count); %取对数运算不是必须，但能提高图像对比度
% 
% %%%% Show
% cpuTime = toc(t);
% % fig = gcf;
% % fig.Position = [200 200 600 600];
% imagesc(x, y, count);
% % colormap([jet();flipud(jet());0 0 0]);
% axis off
% title(sprintf('%1.2fsecs (without GPU)', cpuTime));

%% ------native GPU------
%%%% Setup
t = tic();
x = gpuArray.linspace(xlim(1), xlim(2), gridSize);
y = gpuArray.linspace(ylim(1), ylim(2), gridSize);
[xGrid,yGrid] = meshgrid(x, y);
z0 = complex(xGrid, yGrid);
count = ones(size(z0), 'gpuArray');

%%%% Calculate
z = z0;
for n = 0:maxIterations
    z = z*z + z0;
    inside = (abs(z)<=2);
    count = count + inside;
end
% count = log(count); %取对数运算不是必须，但能提高图像对比度

%%%% Show
count = gather(count); % Fetch the data back from the GPU
naiveGPUTime = toc(t);
figure
imagesc(x, y, count)
axis off
title('未使用count = log(count)')
% title(sprintf('%1.3fsecs (native GPU) = %1.1fx faster', ...
%     naiveGPUTime, cpuTime/naiveGPUTime))

%% ------GPU arrayfun------
%%%% Setup
t = tic();
x = gpuArray.linspace(xlim(1), xlim(2), gridSize);
y = gpuArray.linspace(ylim(1), ylim(2), gridSize);
[xGrid,yGrid] = meshgrid(x, y);

%%%% Calculate
count = arrayfun(@pctdemo_processMandelbrotElement, ...
                  xGrid, yGrid, maxIterations);
% 此处的arrayfun会调用pctdemo_processMandelbrotElement.m，
% 该m文件的内容附在后面。如果在这一行报错，请把
% pctdemo_processMandelbrotElement.m复制到当前m文件的目录下。
%%%% Show
count = gather(count); % Fetch the data back from the GPU
gpuArrayfunTime = toc(t);
figure
imagesc(x, y, count)
axis off
title(sprintf('%1.3fsecs (GPU arrayfun) = %1.1fx faster', ...
    gpuArrayfunTime, cpuTime/gpuArrayfunTime));

%% ------GPU------
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
figure
imagesc(x, y, count)
axis off
title(sprintf('%1.3fsecs (GPU CUDAKernel) = %1.1fx faster', ...
    gpuCUDAKernelTime, cpuTime/gpuCUDAKernelTime));
