function [alpha]=ikm(cx,cy)
%global a1x a1y a2x a2y a3x a3y r1 r2 r3 l1 l2 l3
a1x=-0.349;
a1y=-0.202;
a2x=0.349;
a2y=-0.202;
a3x=0;
a3y=0.404;
r1=0.40;
r2=0.40;
r3=0.40;
l1=0.40;
l2=0.40;
l3=0.40;
%%
phai1=atan2((cy-a1y),(cx-a1x));
a1c=sqrt((cy-a1y).^2+(cx-a1x).^2);
alpha1=acos((r1.^2+a1c.^2-l1.^2)/(2*r1*a1c))+phai1;
%%
phai2=atan2((cy-a2y),(cx-a2x));
a2c=sqrt((cy-a2y).^2+(cx-a2x).^2);
alpha2=acos((r2.^2+a2c.^2-l2.^2)/(2*r2*a2c))+phai2;
%%
phai3=atan2((cy-a3y),(cx-a3x));
a3c=sqrt((cy-a3y).^2+(cx-a3x).^2);
alpha3=acos((r3.^2+a3c.^2-l3.^2)/(2*r3*a3c))+phai3;
%%
alpha=[alpha1,alpha2,alpha3];
end