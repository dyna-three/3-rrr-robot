function [beta]=passivejoint(cx,cy)
%global a1x a1y a2x a2y a3x a3y r1 r2 r3 l1 l2 l3
a1x=-0.349;
a1y=-0.202;
a2x=0.349;
a2y=-0.202;
a3x=0;
a3y=0.404;
r1=0.75;
r2=0.75;
r3=0.75;
l1=0.60;
l2=0.60;
l3=0.60;
%% get the values of active joints
alpha=ikm(cx,cy);
%% beta1
a1c=sqrt((cy-a1y).^2+(cx-a1x).^2);
beta1=acos((r1^2+l1^2-a1c^2)/(2*r1*l1))+alpha(1)-pi;
%% beta2
a2c=sqrt((cy-a2y).^2+(cx-a2x).^2);
beta2=acos((r2^2+l2^2-a2c^2)/(2*r2*l2))+alpha(2)-pi;
%% beta3
a3c=sqrt((cy-a3y).^2+(cx-a3x).^2);
beta3=acos((r3^2+l3^2-a3c^2)/(2*r3*l3))+alpha(3)-pi;
beta=[beta1 beta2 beta3];