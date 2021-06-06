%% impulse function

n = -10:1:10;
output = impulse_fun(n);
stem(n, output);
axis([-12, 12, -4, 4]);
title('Impulse Function');

%% shifted impulse function

n = -10:1:10;
output = shifted_impulse_fun(n, 3);
stem(n, output);
axis([-12, 12, -4, 4]);
title('Shifted Impulse Function');

%% delta(t) = u(t) - u(t-1)

tiledlayout(3, 1)

nexttile
n = -10:1:10;
output1 = unit_step(n);
stem(n, output1)
hold on
axis([-12, 12, -4, 4])
title("u(t)")

nexttile
output2 = shifted_unit_step(n, 1);
stem(n, output2)
hold on
axis([-12, 12, -4, 4])
title("u(t-1)")

nexttile
stem(n, output1 - output2)
hold on
axis([-12, 12, -4, 4])
title("delta(t)")

%% f(n) * delta(n-3) = f(3)
tiledlayout(2,1)

nexttile
n = -10:0.5:10;
f = sin(n);
stem(n, f)
hold on
axis([-12, 12, -4, 4]);
title("f(n)/ sin(n)")


nexttile
output = shifted_impulse_fun(n, 3);
stem(n, f.*output)
hold on
axis([-12, 12, -4, 4]);
title("f(n) * delta(n-3) = f(3)")