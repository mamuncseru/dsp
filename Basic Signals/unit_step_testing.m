%% unit step function
n = -10 : 10;
output = unit_step(n);
stem(n, output)
hold on
axis([-12, 12, -3, 3])

%% shifted unit step function
n = -10 : 10;
output = shifted_unit_step(n, 3);
stem(n, output)
hold on
axis([-12, 12, -3, 3])

%% property (u(n-n0))^k = u(n-n0) | shifted unit step function 
tiledlayout(3, 1)
clf

nexttile
n = -10 : 10;
output1 = shifted_unit_step(n, 2);
stem(n, output1)
hold on
% axis([-12, 12, -3, 3])

nexttile
output2 = shifted_unit_step(n, 2);
stem(n, output2)
hold on
% axis([-12, 12, -3, 3])

nexttile
stem(n, output1.*output2)
hold on
% axis([-12, 12, -3, 3])


%% Quick Test
tiledlayout(3, 1)
nexttile
n = -10 :1: 10;
output1 = 4*unit_step(n);
stem(n, output1)
hold on
axis([-12, 12, -9, 9])
title('4H(u)');

nexttile
n = -10 :1: 10;
output2 = 3*shifted_unit_step(n, 2) ;
stem(n, output2)
hold on
axis([-12, 12, -9, 9])
title('3H(n-2)');
nexttile
stem(n, output1+output2)
hold on
axis([-12, 12, -9, 9])
title('4H(u) + 3H(n-2)')




