%% Exponential Signal
alpha = 3;
n = -2:0.5:2;
tiledlayout(3,1)

nexttile
output1 = exponential_sig(n, alpha);
stem(n, output1)
hold on
axis([-5, 5, -50, 50])
title("Rising Exponential")

nexttile
alpha = 0;
output2 = exponential_sig(n, alpha);
stem(n, output2)
hold on
axis([-5, 5, -50, 50])
title("Constant Exponential or unit step")

nexttile
alpha = -3;
output3 = exponential_sig(n, alpha);
stem(n, output3)
hold on
axis([-5, 5, -50, 50])
title("decaying Exponential")


%% u(t)exp(-alpha*t)
alpha = -3;
n = -2: 0.5 : 2;
output = unit_step(n) .* exponential_sig(n, alpha);
stem(n, output)
hold on
axis([-5, 5, -50, 50])
title("u(t)exp(-alpha*t)")


%% u(-t)exp(-alpha*t)
alpha = -3;
n = -2: 0.5 : 2;
output = unit_step(-n) .* exponential_sig(n, alpha);
stem(n, output)
hold on
axis([-5, 5, -50, 50])
title("u(-t)exp(-alpha*t)")
