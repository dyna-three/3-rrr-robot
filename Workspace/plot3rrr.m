for i=0:0.1:6.2832  % This for loop start from angle 0 rad (0 degree)  to angle 6.2838 rad (360 degree) with step 0.1 rad (5.7296 deg)
    clf
    cx=(0.20*cos(i));
    cy=(0.20*sin(i));
    status=drawrobot(cx,cy);
    plot(cx, cy, '.b', 'MarkerSize',50)
    pause(0.01)
end