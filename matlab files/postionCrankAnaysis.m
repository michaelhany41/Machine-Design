close
clc %this line just clears your command window
i=1;
options = optimset('display', 'off');
for theta=0:1:360 
the(i)=theta;
theta34(:,i) = fsolve(@(x) position(x, theta), [1 1], options) * 180 / pi;
theta37(:,i) = fsolve(@(x) positionCrank(x, theta34(2,i) , theta34(1,i)) , [1 1] ,options ) * 180/pi;
i=i+1;
end
figure;
plot(the(1,:),theta37(1,:), 'b', 'LineWidth', 1.5); 
xlabel('Input Angle \theta (degrees)');
ylabel('theta6 ');
legend('theta6');
title('PositionCrank Analysis');
grid on;

figure;
plot(the(1,:),theta37(2,:), 'r', 'LineWidth', 1.5);
xlabel('Input Angle \theta (degrees)');
ylabel('r7');
legend('r7');
title('PositionCrank Analysis');
grid on;