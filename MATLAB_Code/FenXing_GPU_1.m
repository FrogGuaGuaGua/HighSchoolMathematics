clc
close all

maxIterations = 500;
gridSize = 500;
xlim = [-1.6, 0.6];
ylim = [ -1, 1];

%%%% Setup
t = tic();
x = gpuArray.linspace(xlim(1), xlim(2), gridSize);
y = gpuArray.linspace(ylim(1), ylim(2), gridSize);
[xGrid,yGrid] = meshgrid(x, y);

%%%% Calculate
count = arrayfun(@pctdemo_processMandelbrotElement1, ...
                  xGrid, yGrid, maxIterations);
count = gather(count); % Fetch the data back from the GPU
gpuArrayfunTime = toc(t);
figure
% image(x, y, count)
imagesc(x, y, count)
colormap(summer)
axis off
axis equal
 gpuArrayfunTime
 title('$z_{n+1}=z_n^3+C$','interpreter','latex','fontsize',20)
% title(sprintf('%1.3fsecs (GPU arrayfun) = %1.1fx faster', ...
%     gpuArrayfunTime, cpuTime/gpuArrayfunTime));

% count = arrayfun(@pctdemo_processMandelbrotElement2, ...
%                   xGrid, yGrid, maxIterations);
% count = gather(count); % Fetch the data back from the GPU
% gpuArrayfunTime = toc(t);
% figure
% imagesc(x, y, count)
% axis off