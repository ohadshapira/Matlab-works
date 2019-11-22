%% Colorful cube

figure(1), clf

n  = 10;
ni = linspace(0,1,n);
[X,Y] = meshgrid(ni);
x = [X(:) X(:)]';
y = [Y(:) Y(:)]';
z = [zeros(1,n*n); ones(1,n*n)];

% use plot3 to draw all connecting lines
plot3(x,y,z,'k', z,x,y,'b', y,z,x,'r') % , hold on
% plot3(y,z,x,'r'),hold on
% plot3(z,x,y,'b')

% plot the nodes
hold on
[X,Y,Z] = meshgrid(ni);
% color = randn(1,n^3);
color = logspace(log10(1),log10(10),n^3);
h = scatter3(X(:),Y(:),Z(:),100,color,'filled'); % keep handle to change properties
set(h, 'Marker', 's')

rotate3d on
axis square, axis off, rotate3d on

%%
