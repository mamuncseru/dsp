%% Signum Function
clf
n = -10:1:10;
output = signum_fun(n);
stem(n, output)
hold on
axis([-12, 12, -3, 3])
title("Signum Function")

%% 2*u(t) - 1 = sign(t)

clf

tiledlayout(2,1)

nexttile
n = -10:1:10;
output = 2*unit_step(n);
stem(n, output)
hold on
axis([-12, 12, -3, 3])
title("2*u(t)")


nexttile 
stem(n, output-1)
hold on
axis([-12, 12, -3, 3])
title("2*u(t) - 1 = sign(t)")
