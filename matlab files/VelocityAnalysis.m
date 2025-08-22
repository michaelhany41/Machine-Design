close
clc %this line just clears your command window
i=1;
options = optimset('display', 'off');
for theta=0:1:360 
the(i)=theta;
theta34(:,i) = fsolve(@(x) position(x, theta), [1 1], options) * 180 / pi;;
theta35(:,i) = fsolve(@(x) velocity(x, theta, theta34(1,i), theta34(2,i)), [1 1], options);
i=i+1;
end
figure;
plot(the(1,:),theta35(1,:), 'b', 'LineWidth', 1.5); 
xlabel('Input Angle \theta (degrees)');
ylabel('omega3 ');
legend('omega3');
title('Velocity Analysis');
grid on;

figure;
plot(the(1,:),theta35(2,:), 'r', 'LineWidth', 1.5);
xlabel('Input Angle \theta (degrees)');
ylabel('omega4');
legend('omega4');
title('Velocit Analysis');
grid on;