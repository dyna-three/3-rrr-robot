function [status]=drawrobot(cx,cy)
alpha=ikm(cx,cy);
a1x=-0.349;
a1y=-0.202;
a2x=0.349;
a2y=-0.202;
a3x=0;
a3y=0.404;
r1=0.40;
r2=0.40;
r3=0.40;
ri=0.40;
li=0.40;
%% Plot circles
% for circle 1
 %C1=circleplot(a1x,a1y,(ri+li))
% for circle 2
 %C2=circleplot(a2x,a2y,(ri+li))
% for circle 3
 %C3=circleplot(a3x,a3y,(ri+li))
 %hold on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% For Arm 1
% r1
angle1=alpha(1);
b1x = a1x + r1 * cos(angle1);
b1y = a1y + r1 * sin(angle1);
hold on
x = [a1x b1x];
y = [a1y b1y];
plot(a1x, a1y, '.r', 'MarkerSize',50)
hold on
plot(b1x, b1y, '.b', 'MarkerSize',50)
plot(x, y,'r', 'LineWidth', 7)
% l1
x = [b1x cx];
y = [b1y cy];
hold on
plot(cx, cy, '.b', 'MarkerSize',50)
plot(x, y,'b', 'LineWidth', 7)
%% For Arm 2
% r2
angle2=alpha(2);
b2x = a2x + r2 * cos(angle2);
b2y = a2y + r2 * sin(angle2);
hold on
x = [a2x b2x];
y = [a2y b2y];
plot(a2x, a2y, '.r', 'MarkerSize',50)
hold on
plot(b2x, b2y, '.b', 'MarkerSize',50)
plot(x, y,'r', 'LineWidth', 7)
% l2
x = [b2x cx];
y = [b2y cy];
hold on
plot(cx, cy, '.b', 'MarkerSize',50)
plot(x, y,'b', 'LineWidth', 7)
%% For Arm 3
% r3
angle3=alpha(3);
b3x = a3x + r3 * cos(angle3);
b3y = a3y + r3 * sin(angle3);
hold on
x = [a3x b3x];
y = [a3y b3y];
plot(a3x, a3y, '.r', 'MarkerSize',50)
hold on
plot(b3x, b3y, '.b', 'MarkerSize',50)
plot(x, y,'r', 'LineWidth', 7)
% l3
x = [b3x cx];
y = [b3y cy];
hold on
plot(cx, cy, '.b', 'MarkerSize',50)
plot(x, y,'b', 'LineWidth', 7)
%%
xlabel('X [m]') % x-axis label
ylabel('Y [m]') % y-axis label
xlim([-0.5 0.55]) % xlim([-0.3 0.9])
set(gca,'xtick',-0.55:0.1:0.55)
ylim([-0.5 0.55]) % ylim([-0.3 0.9])
set(gca,'ytick',-0.55:0.1:0.55)
set(gca,'FontSize',15)
axis square 
grid
status=[alpha(1) alpha(2) alpha(3)];
end