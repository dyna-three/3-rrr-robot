function h = circleplot(x,y,r)
hold on
th = 0:0.01:6.2832;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit,'r');
hold off