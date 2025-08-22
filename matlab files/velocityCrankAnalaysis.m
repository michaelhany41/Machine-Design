close
clc %this line just clears your command window
i=1;
options = optimset('display', 'off');
for theta=0:1:360 
the(i)=theta;
theta34(:,i) = fsolve(@(x) position(x, theta), [1 1], options) * 180 / pi;;
theta35(:,i) = fsolve(@(x) velocity(x, theta, theta34(1,i), theta34(2,i)), [1 1], options);
theta37(:,i) = fsolve(@(x) positionCrank(x, theta34(2,i) , theta34(1,i)) , [1 1] ,options ) * 180/pi;
theta38(:,i) = fsolve(@(x) velocityCrank(x,theta34(2,i) , theta34(1,i) , theta35(2,i) , theta35(1,i) , theta37(1,i) ) , [1 1] ,options );
i=i+1;
end
figure;
plot(the(1,:),theta38(1,:), 'b', 'LineWidth', 1.5); 
xlabel('Input Angle \theta (degrees)');
ylabel('omega6 ');
legend('omega6');
title('VelocityCrank Analysis');
grid on;

figure;
plot(the(1,:),theta38(2,:), 'r', 'LineWidth', 1.5);
xlabel('Input Angle \theta (degrees)');
ylabel('r7Dot');
legend('r7Dot');
title('VelocityCrank Analysis');
grid on;