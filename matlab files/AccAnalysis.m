close
clc %this line just clears your command window
i=1;
options = optimset('display', 'off');
for theta=0:1:360 
    the(i)=theta;
    theta34(:,i) = fsolve(@(x) position(x, theta), [1 1], options) * 180 / pi;;
    theta35(:,i) = fsolve(@(x) velocity(x, theta, theta34(1,i), theta34(2,i)), [1 1], options);
    theta36(:,i) = fsolve(@(x) acc(x, theta , theta34(1,i) , theta34(2,i) , theta35(1,i) , theta35(2,i)) , [1 1], options);
    i=i+1;
end
figure;
plot(the(1,:),theta36(1,:), 'b', 'LineWidth', 1.5); 
xlabel('Input Angle \theta (degrees)');
ylabel('alpha3 ');
legend('alpha3 ');
title('acceleration Analysis');
grid on;

figure;
plot(the(1,:),theta36(2,:), 'r', 'LineWidth', 1.5);
xlabel('Input Angle \theta (degrees)');
ylabel('alpha4');
legend('alpha4');
title('acceleration Analysis');
grid on;
