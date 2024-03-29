clc
x = linspace(1, 2, 5);
y = linspace(1, 2, 3);
[xGrid,yGrid] = meshgrid(x, y);
z=complex(xGrid,yGrid);
z*z-z.*z