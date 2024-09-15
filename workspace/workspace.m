%% Plot the workspace area which is the intersected area of the 3 circle
% Position of the 1st active joint a_1
a1x=7.5;
a1y=-4.1;
plot(a1x,a1y,'bo')
hold on
% Position of the 2nd active joint a_2
a2x=-0.3;
a2y=8.4;
plot(a2x,a2y,'bo')
hold on
% Position of the 3rd active joint a_3
a3x=-7.2;
a3y=-4.6;
plot(a3x,a3y,'bo')
hold on
% The length of the links of the active link ri and the passive one li [ where i =1,2,3 ] ]
ri=7.5;
li=6.0;
%% Plot circles
% for circle 1
 C1=circleplot(a1x,a1y,(ri+li));
% for circle 2
 C2=circleplot(a2x,a2y,(ri+li));
% for circle 3
 C3=circleplot(a3x,a3y,(ri+li));
 hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The intersection points of the 3 circle
[x1out,y1out] = circcirc(a1x,a1y,(ri+li),a2x,a2y,(ri+li));
[x2out,y2out] = circcirc(a3x,a3y,(ri+li),a2x,a2y,(ri+li));
[x3out,y3out] = circcirc(a1x,a1y,(ri+li),a3x,a3y,(ri+li));
%%%%%%%%%%%%%%%%%%%
% Plot the curve of the intersection area between a1 , a2 and a3 which give
% us the workspace area.
d = sqrt((x3out(2)-x1out(1))^2+(y3out(2)-y1out(1))^2); % Distance between points
a = atan2(x3out(2)-x1out(1),-(y3out(2)-y1out(1))); % Perpendicular bisector angle
b = asin(d/2/(ri+li)); % Half arc angle
c = linspace(a-b,a+b); % Arc angle range
e = sqrt((ri+li)^2-d^2/4); % Distance, center to midpoint
xcurve = (x1out(1)+x3out(2))/2-e*cos(a)+(ri+li)*cos(c); % Cartesian coords. of arc
ycurve = (y1out(1)+y3out(2))/2-e*sin(a)+(ri+li)*sin(c);
plot(xcurve,ycurve,'k.', 'MarkerSize',5)
hold on
d = sqrt((x2out(2)-x1out(1))^2+(y2out(2)-y1out(1))^2); % Distance between points
a = atan2(-(x2out(2)-x1out(1)),y2out(2)-y1out(1)); % Perpendicular bisector angle
b = asin(d/2/(ri+li)); % Half arc angle
c = linspace(a-b,a+b); % Arc angle range
e = sqrt((ri+li)^2-d^2/4); % Distance, center to midpoint
xcurve = (x1out(1)+x2out(2))/2-e*cos(a)+(ri+li)*cos(c); % Cartesian coords. of arc
ycurve = (y1out(1)+y2out(2))/2-e*sin(a)+(ri+li)*sin(c);
plot(xcurve,ycurve,'k.', 'MarkerSize',5)
hold on
d = sqrt((x3out(2)-x2out(2))^2+(y3out(2)-y2out(2))^2); % Distance between points
a = atan2(-(x3out(2)-x2out(2)),y3out(2)-y2out(2)); % Perpendicular bisector angle
b = asin(d/2/(ri+li)); % Half arc angle
c = linspace(a-b,a+b); % Arc angle range
e = sqrt((ri+li)^2-d^2/4); % Distance, center to midpoint
xcurve = (x2out(2)+x3out(2))/2-e*cos(a)+(ri+li)*cos(c); % Cartesian coords. of arc
ycurve = (y2out(2)+y3out(2))/2-e*sin(a)+(ri+li)*sin(c);
plot(xcurve,ycurve,'k.', 'MarkerSize',5)
hold on
xlabel('X [m]') % x-axis label
ylabel('Y [m]') % y-axis label
 % xlim([-0.3 0.9])
%set(gca,'xtick',-1.5:0.2:1.5)
 % ylim([-0.3 0.9])
%set(gca,'ytick',-1.5:0.2:1.5)
%set(gca,'FontSize',15)
%set(findall(gca, 'Type','text'), 'FontSize', 15)
axis square
grid on

% This function is used to plot any circle with position x and y, and
% radius r
function h = circleplot(x,y,r)
    hold on
    th = 0:0.01:6.2832;
    xunit = r * cos(th) + x;
    yunit = r * sin(th) + y;
    h = plot(xunit, yunit,'r');
    hold off
end