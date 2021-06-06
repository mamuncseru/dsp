function y = impulse_fun(n)

y = zeros(1, length(n));

y(n(:)==0) = 1;

end