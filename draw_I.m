function draw_I()

p1 = [0, 0];
p2 = [0, 3];
p3 = [0, 6];
pn = [ p1; p2; p3];
plot(pn(:, 1), pn(:, 2), '--');
hold on;
plot([p1(1), p2(1)], [p1(2), p2(2)], '--');
axis([-2 10 -2 10])
grid on;

xlabel('x-axis');

ylabel('y-axis');

title('I');

grid on;

end