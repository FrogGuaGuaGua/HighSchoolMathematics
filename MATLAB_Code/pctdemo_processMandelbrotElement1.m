function count = pctdemo_processMandelbrotElement1(x0,y0,maxIterations)
%PCTDEMO_PROCESSMANDELBROTELEMENT  Evaluate a Mandelbrot Set element
%   m = pctdemo_processMandelbrotElement(x0,y0,maxIterations) evaluates the
%   number of steps before the complex value (x0,y0) jumps outside a circle
%   of radius two on the complex plane. Each iteration involves mapping
%   z=z^2+z0 where z0=x0+i*y0. The return value is the log of the
%   iteration count at escape or maxIterations if the point did not escape.
%
%   See also: PARALLELDEMO_GPU_MANDELBROT

%   Copyright 2011 The MathWorks, Inc.

z0 = complex(x0,y0);
z = z0;
count = 1;
while (count <= maxIterations) && (abs(z) <= 2)
    count = count + 1;
    z = z.*z+ z0;
end
count = log(count);

% if count>=log(maxIterations)
%     count=20;
% end
