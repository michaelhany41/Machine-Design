close
clc %this line just clears your command window
i=1;
options = optimset('display', 'off');
for theta=0:1:360 
the(i)=theta;
theta34(:,i) = fsolve(@(x) position(x, theta), [1 1], options) * 180 / pi;

i=i+1;
end
figure;
plot(the(1,:),theta34(1,:), 'b', 'LineWidth', 1.5); 
xlabel('Input Angle \theta (degrees)');
ylabel('theta3 ');
legend('theta3');
title('Position Analysis');
grid on;

figure;
plot(the(1,:),theta34(2,:), 'r', 'LineWidth', 1.5);
xlabel('Input Angle \theta (degrees)');
ylabel('theta4');
legend('theta4');
title('Position Analysis');
grid on;