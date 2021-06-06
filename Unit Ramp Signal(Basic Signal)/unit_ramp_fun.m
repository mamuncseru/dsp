function y = unit_ramp_fun(n)

y = n;

y(n(:) < 0) = 0;

end