% (2021���߿�ȫ���׾���) ������$ C $�Ķ���Ϊ����ԭ��$ O $��
% ������$ x $���ϣ�ֱ��$ l:\ x = 1 $��$ C $��$ P,Q $���㣬
% ��$ OP\perp OQ $.��֪��$ M(2,0) $����$ \odot M $��$ l $����

clc
close all
fimplicit(@(x,y)y.^2-x,'k','linewidth',1.2)
hold on
fimplicit(@(x,y)(x-2).^2+y.^2-1,'k','linewidth',1.2)
plot([1 1],[-1 1],'k--','linewidth',1.2)
plot([0 1],[0 1],'k--','linewidth',1.2)
plot([0 1],[0 -1],'k--','linewidth',1.2)

plot([3 3],[-sqrt(3) sqrt(3)],'k--','linewidth',1.2)
plot([0 3],[0 sqrt(3)],'k--','linewidth',1.2)
plot([0 3],[0 -sqrt(3)],'k--','linewidth',1.2)


plot([-0.5 4],[0 0],'k','linewidth',0.8)
plot([0 0],[-2.5 2.5],'k','linewidth',0.8)

syms x y;  % ������ű���
eq1 = 4*x + 3*y == 13;  % ���ŷ���1
eq2 = y^2 - x == 0;     % ���ŷ���2
S = solve([eq1, eq2], [x, y])

% f1=@(x,y)4*x+3*y-13;
% f2=@(x,y)y.^2-x;
% S=solve({f1,f2})
% fimplicit(f1,'k','linewidth',1.2)

xxx=0.1117;
yyy=-0.3343;

plot([xxx S.x(1)],[yyy S.y(1)],'k','linewidth',1.2)
plot([xxx S.x(2)],[yyy S.y(2)],'k','linewidth',1.2)
plot([S.x(1) S.x(2)],[S.y(1) S.y(2)],'k','linewidth',1.2)

plot(2,0,'k.','markersize',10)
text(2,-0.2,'$M$','interpreter','latex','fontsize',18);
text(-0.3,-0.2,'$O$','interpreter','latex','fontsize',18);
text(1-0.1,1.2,'$P$','interpreter','latex','fontsize',18);
text(1-0.13,-1.25,'$Q$','interpreter','latex','fontsize',18);
text(3-0.1,sqrt(3)+0.17,'$R$','interpreter','latex','fontsize',18);
text(3-0.1,-sqrt(3)-0.22,'$S$','interpreter','latex','fontsize',18);
text(S.x(1),S.y(1)+0.13,'$A_1$','interpreter','latex','fontsize',18);
text(S.x(2)-0.14,S.y(2)+0.25,'$A_2$','interpreter','latex','fontsize',18);
text(xxx-0.1,yyy-0.33,'$A_3$','interpreter','latex','fontsize',18);
axis equal
axis([-0.2 5.5 -2.5 2.5])
axis off
