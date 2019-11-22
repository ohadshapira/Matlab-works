%% A ball in a box

% target center and radius of the sphere
skip   = 3; % configure resolution
cent   = round([ .3 .0 .8 ]*255/skip);
radius = round( .3 *255/skip);


% define the indices in the RGB space
x = 0:255/skip;
[R,G,B] = meshgrid(x-cent(1),x-cent(1),x-cent(1));


% show points as a physical sphere with color mapped on
distSph = sqrt((R).^2 + (G).^2+(B).^2);% Euclidean distance
distSph = distSph<radius;

% convert the subscripts into indices
[i,j,k] = ind2sub(size(distSph),find(distSph(:)));

figure(1), clf
scatter3(i,j,k,30,[i j k]./(255/skip),'filled')
axis square, rotate3d on
set(gca,'xlim',[0 255]/skip,'ylim',[0 255]/skip,'zlim',[0 255]/skip)
xlabel('Red'), ylabel('Green'), zlabel('Blue')


% convert the axis labels to decimal
for dimi='xyz'
    ticklabel = str2double(get(gca,[dimi 'TickLabel']));
    set(gca,[dimi 'TickLabel'],round(10*ticklabel/(255/skip))/10,[dimi 'tick'],ticklabel);
end
%%
