%% old-school movie wipe

% import images
car = imread('car1.jpg'); % car1.jpg
tap = imread('tape.png');% tape.png

car = mean(car,3);
tap = mean(tap,3);

% size of car image
carsize = size(car);

alphaLat = linspace(0, 1, carsize(2));

figure(5), clf
h1 = imagesc(car,'AlphaData',repmat(alphaLat,carsize(1),1));
hold on
h2 = imagesc(tapR,'AlphaData',repmat(1-alphaLat,carsize(1),1));
colormap gray
axis image

x = linspace(-5,5,carsize(2));

for ti=logspace(log10(.01),log10(100),20)
    
    % create sigmoid alpha curve
    sigmoid = 1./(1+ti*exp(-x));
    
    % set alpha data for image handle
    set(h2,'AlphaData', repmat(sigmoid,carsize(1),1))
    pause(.005)
end