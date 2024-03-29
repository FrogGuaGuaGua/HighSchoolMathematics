% syms x
% t=-3.464:0.001:3.464;
% f(x)=3*x^2+3*x*(sqrt(36-3*x^2)+sqrt(64-3*x^2))-sqrt(36-3*x^2)*sqrt(64-3*x^2);
% plot(t,f(t),'linewidth',2,'color','black')

clc;close all
%%
% x=-3.464:0.001:3.464;
% y=3*x.^2+3*x.*(sqrt(36-3*x.^2)+sqrt(64-3*x.^2))-sqrt(36-3*x.^2).*sqrt(64-3*x.^2);
% plot(x,y,'linewidth',1.5,'color','k')
% hold on
% plot(-12/sqrt(37),-96,'d','markersize',8,'color','black')
% text(-12/sqrt(37)-0.5,-96+10,'(-1.9728, -96)')
% plot(12/sqrt(13),96,'d','markersize',8,'color','black')
% text(12/sqrt(13)-0.2,96-10,'(3.3282, 96)')
% plot(1.0239,0,'o','markersize',6,'color','black')
% text(1.0239,-5,'(1.0239, 0)')
% grid on; 
% % grid minor
% xmin=-3.7;
% xmax=4.3;
% 
% plot([xmin,xmax],[0,0],'k','linewidth',1)
% plot([0,0],[-105,105],'k','linewidth',1)
% axis([xmin,xmax,-105,105])
% % axis on
%%
clc;
s_2=25-4*sqrt(3);
o_2=8*sqrt(3);
s_1=sqrt(s_2+2*o_2);
a=3;b=4;c=5;
y=sqrt((2*(a^2+b^2)-s_1^2-(b^2-a^2)^2/s_1^2)/3)
x=(-y+sqrt(4*a^2-3*y^2))/2
z=(-y+sqrt(4*b^2-3*y^2))/2
fprintf('x*y+y*z+z*x= %d \n',x*y+y*z+z*x)
fprintf('8*sqrt(3)= %d \n',8*sqrt(3))
fprintf('x+y+z= %d\n',x+y+z)
fprintf('sqrt(25+12*sqrt(3))= %d \n',sqrt(25+12*sqrt(3)))
fprintf('sqrt(a*b+b*c+c*a)= %d \n',sqrt(a*b+b*c+c*a))

abs(x^2+x*y+y^2-a^2)
abs(y^2+y*z+z^2-b^2)
abs(z^2+z*x+x^2-c^2)
%%
clc
syms a b c
% expand((3*(a*b+b*c+c*a)-a^2-b^2-c^2)^2+3*(a^4+b^4+c^4)-2*(a^2*b^2+b^2*c^2+c^2*a^2))
factor((2*(a*b+b*c+c*a)-a^2-b^2-c^2)^2+3*(a^4+b^4+c^4)-2*(a^2*b^2+b^2*c^2+c^2*a^2))
