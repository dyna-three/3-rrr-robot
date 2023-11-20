function letterS()
p1 = [0, 0];
p2 = [0, 3];
p3 = [0, 6];
p4 = [3, 6];
p5 = [3, 3];
p6 = [3, 0];
p7 = [-1,0];

pn = [p1; p6; p6; p5; p5; p2;p2;p3;p3;p4];
plot(pn(:, 1), pn(:, 2), '--');
hold on;
axis([-2 10 0 10])
grid on;

xlabel('x-axis');

ylabel('y-axis');

title('S');

grid on;

end