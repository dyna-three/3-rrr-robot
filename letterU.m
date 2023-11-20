function points()

p1 = [0, 0];
p2 = [0, 3];
p3 = [0, 6];
p4 = [3, 6];
p5 = [3, 3];
p6 = [3, 0];

pn = [p3; p2; p1;p6;p5;p4];
plot(pn(:, 1), pn(:, 2), '--');
hold on;
% plot([p2(1), p5(1)], [p2(2), p5(2)], '--');
axis([-2 10 -2 10])
grid on;

xlabel('x-axis');

ylabel('y-axis');

title('U');

grid on;

end





