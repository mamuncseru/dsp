%% unit ramp function
n = -10:1:10;
output = unit_ramp_fun(n);
stem(n, output)
hold on

axis([-12, 12, -12, 12]);
title("Unit Ramp Function")