function y = shifted_impulse_fun(n, k)

y = zeros(1, length(n));

y(n(:)==k) = 1;

end