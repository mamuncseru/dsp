function y = shifted_unit_step(n, n0)

y = 0 * n;

y(n(:) >= n0) = 1;

end