
%% scatter sphere inside a kube

figure(1), clf, hold on

% draw the bottom lines
plot3([0 0],[0 1],[0 0],'k','linew',2)
plot3([0 1],[1 1],[0 0],'k','linew',2)
plot3([0 1],[0 0],[0 0],'k','linew',2)
plot3([1 1],[0 1],[0 0],'k','linew',2)

% draw the top lines
plot3([0 0],[0 1],[1 1],'r','linew',2)
plot3([0 1],[1 1],[1 1],'r','linew',2)
plot3([0 1],[0 0],[1 1],'r','linew',2)
plot3([1 1],[0 1],[1 1],'r','linew',2)

% draw the vertical lines
plot3([0 0],[0 0],[0 1],'b','linew',2)
plot3([1 1],[1 1],[0 1],'b','linew',2)
plot3([0 0],[1 1],[0 1],'b','linew',2)
plot3([1 1],[0 0],[0 1],'b','linew',2)

% fix axis
axis square
xlabel('x'), ylabel('y'), zlabel('z')

% sphere inside the unit box
[sx,sy,sz] = sphere;
%plot3((sx+1).*0.5,(sy+1).*0.5,(sz+1).*0.5,'ko','markerfacecolor','m')

% use scatter3 to make a colorful ball
scatter3(sx(:)/2+.5,sy(:)/2+.5,sz(:)/2+.5,100,linspace(0,255,numel(sz)),'filled')


rotate3d on

% turn off the tick marks
set(gca,'xtick',[],'ytick',[],'ztick',[])
axis off

%%
