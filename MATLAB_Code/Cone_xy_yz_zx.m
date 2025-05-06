%%
clc
close all

subplot(1,2,1)
% 'FaceColor','interp'
fimplicit3(@(x,y,z)6*(x.*y+y.*z+z.*x)-5*(x.^2+y.^2+z.^2),'MeshDensity',100,'EdgeColor','none','FaceAlpha',1)
% axis([-8 8 -8 8])
% xlabel('x')
% ylabel('y')
% zlabel('z')
axis equal
hold on
fimplicit3(@(x,y,z)x+y-z,'r','EdgeColor','none','FaceAlpha',.5)
fimplicit3(@(x,y,z)x+z-y,'g','EdgeColor','none','FaceAlpha',.5)
fimplicit3(@(x,y,z)y+z-x,'b','EdgeColor','none','FaceAlpha',.5)
% fimplicit3(@(x,y,z)x+y-z,'FaceColor',[0.5 0.5 0.5],'EdgeColor','none','FaceAlpha',.5)
% fimplicit3(@(x,y,z)x+z-y,'FaceColor',[0.7 0.7 0.7],'EdgeColor','none','FaceAlpha',.5)
% fimplicit3(@(x,y,z)y+z-x,'FaceColor',[0.9 0.9 0.9],'EdgeColor','none','FaceAlpha',.5)
grid on

 title('$ 6(xy+yz+zx)=5(x^2+y^2+z^2) $','interpreter','latex')
% h=legend('$ 6(xy+yz+zx)=5(x^2+y^2+z^2) $');
% set(h,'interpreter','latex')

subplot(1,2,2)
fimplicit3(@(x,y,z)6*(x.*y+y.*z+z.*x)-5*(x.^2+y.^2+z.^2),'MeshDensity',100,'EdgeColor','none','FaceAlpha',1)
% axis([-8 8 -8 8])
axis equal
hold on
fimplicit3(@(x,y,z)x+y-z,'r','EdgeColor','none','FaceAlpha',.5)
fimplicit3(@(x,y,z)x+z-y,'g','EdgeColor','none','FaceAlpha',.5)
fimplicit3(@(x,y,z)y+z-x,'b','EdgeColor','none','FaceAlpha',.5)
% fimplicit3(@(x,y,z)x+y-z,'EdgeColor','none','FaceAlpha',.5)
% fimplicit3(@(x,y,z)x+z-y,'EdgeColor','none','FaceAlpha',.5)
% fimplicit3(@(x,y,z)y+z-x,'EdgeColor','none','FaceAlpha',.5)
grid on
view([1 1 1])

%%
clc; close all
fimplicit(@(x,y)6*(x.*y+x+y)-5*(x.^2+y.^2+1),'-k','Linewidth',1.2,'MeshDensity',2000)
hold on
grid on

fimplicit(@(x,y)x+y-1,':k','Linewidth',1.2)
fimplicit(@(x,y)x+1-y,'--k','Linewidth',1.2)
fimplicit(@(x,y)y+1-x,'-.k','Linewidth',1.2)
axis equal
axis([-0.5 6 -0.5 3])
h=legend('$ 6(XY+X+Y)=5(X^2+Y^2+1) $','$X+Y=1$','$X+1=Y$','$Y+1=X$');
set(h,'interpreter','latex')