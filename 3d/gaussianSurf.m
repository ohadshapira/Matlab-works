%% Textured Gaussian surfaces

% Gaussian parameters
n = 100; % resolution
s = 2; % width

x = linspace(-5,5,n);
[X,Y] = meshgrid(x);

gaus2d = exp(-(X.^2+Y.^2)/(2*s^2));

figure(1), clf

% surf command
surf(x,x,gaus2d)
shading interp
axis square
rotate3d on

% different color patterns
figure(2), clf
color = randn(n)'
surf(x,x,gaus2d,color);
axis square, rotate3d on
% 
shading interp

%% Gaussian with picture

n  = 240; % resolution
sx = 1; % width
sy = 3; % width

x = linspace(-5,5,n);
[X,Y] = meshgrid(x);

% Gaussian
gaus2d = exp(-(X.^2/(2*sx^2) +Y.^2)/(2*sy^2));

figure(3), clf

% surf command
surf(x,x,gaus2d)
shading interp
axis square
rotate3d on

% image color patterns
img = imread('hands1.jpg');
% change img size
img = mean(img(1:240,1:240,:), 3);

% map image onto the Gaussian surface
surf(x,x,gaus2d,img)
axis square, rotate3d on, shading interp
colormap gray
axis off

%%
