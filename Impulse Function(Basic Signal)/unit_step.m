function y = unit_step(n)

y = 0 * n;

y(n(:) >= 0) = 1;

end