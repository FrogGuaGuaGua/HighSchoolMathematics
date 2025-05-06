clc
close all

x=-3.464:0.001:3.464;
y=3*x.^2+3*x.*(sqrt(36-3*x.^2)+sqrt(64-3*x.^2))-sqrt(36-3*x.^2).*sqrt(64-3*x.^2);
plot(x,y,'linewidth',1.5,'color','k')
hold on
plot(-12/sqrt(37),-96,'d','markersize',8,'color','black')
text(-12/sqrt(37)-0.5,-96+10,'(-1.9728, -96)')
plot(12/sqrt(13),96,'d','markersize',8,'color','black')
text(12/sqrt(13)-0.2,96-10,'(3.3282, 96)')
plot(1.0239,0,'o','markersize',6,'color','black')
text(1.0239,-5,'(1.0239, 0)')
grid on; 
% grid minor
xmin=-3.7;
xmax=4.3;

plot([xmin,xmax],[0,0],'k','linewidth',1)
plot([0,0],[-105,105],'k','linewidth',1)
axis([xmin,xmax,-105,105])
% axis on

