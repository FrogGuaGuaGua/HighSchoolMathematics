clc
close all
figure
hold on
fimplicit(@(x,y) abs(x).^0.3 + abs(y).^0.3 - 1,'k:','MeshDensity',2000)
fimplicit(@(x,y) abs(x).^0.5 + abs(y).^0.5 - 1,'k-.','MeshDensity',2000)
fimplicit(@(x,y) abs(x) + abs(y) - 1,'k:')
fimplicit(@(x,y) x.^2 + y.^2 - 1,'k-')
fimplicit(@(x,y) abs(x).^5 + abs(y).^5 - 1,'k--')
fimplicit(@(x,y) x.^10 + y.^10 - 1,'k-')
fimplicit(@(x,y) x.^50 + y.^50 - 1,'k--')

legend('$|x|^{0.3}+|y|^{0.3}=1$','$|x|^{0.5}+|y|^{0.5}=1$','$|x|+|y|=1$','$|x|^2+|y|^2=1$',...
    '$|x|^5+|y|^5=1$','$|x|^{10}+|y|^{10}=1$','$|x|^{50}+|y|^{50}=1$','Interpreter','latex','FontSize',12)
axis([-1.1 2 -1.1 1.1])
axis equal
