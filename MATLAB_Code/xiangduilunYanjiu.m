syms v
clc
close all
fplot(9/sqrt(1-v^2/9)-9,'k','Linewidth',1.2)
hold on
fplot(v^2/2/sqrt(abs(1-v^2/9)),'k:','Linewidth',1.2)
% hold on
% fplot(v^2/sqrt(abs(1-v^2/9)),'g','Linewidth',1.2)
plot(3*sqrt(2),9,'k.','Markersize',20)

% fplot((v^2/sqrt(v^2/9-1)-1),'k','Linewidth',1.2)
axis([0 10 -1 50])
%  axis off 
% set(gca,'xticklabel',[]); 
% set(gca,'yticklabel',[]); 
% h=legend('E_k(v)=m_0c^2[1/(1-v^2/c^2)^{1/2}-1]','Epsilon_k(v)=m_0v^2/2(1-v^2/c^2)^{1/2}');
% set(h,'Interpreter','latex')
h=legend('$ E_k(v)=m_0c^2/\sqrt{1-\frac{v^2}{c^2}}-m_0c^2 $','$\mathcal{E}_k(v)=m_0v^2/(2\sqrt{|\frac{v^2}{c^2}-1|})$');
set(h,'Interpreter','latex')
% h=legend('$\mathcal{E}_k(v)=\dfrac{m_0v^2}{2\sqrt{\frac{v^2}{c^2}-1}}$');
% set(h,'Interpreter','latex')
