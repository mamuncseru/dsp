function y = signum_fun(n)

% y = n * 0;
y = zeros(1, length(n));

y(n(:)>0) = 1;
y(n(:)==0) = 0;
y(n(:)<0) = -1;

end