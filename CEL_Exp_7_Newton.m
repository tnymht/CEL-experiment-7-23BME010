clc; clear;

A = [1 2 2.5 3 4 5;
     0 5 7 6.5 2 0];

xp = 3.4;

x = A(1,:);
y = A(2,:);

n = length(x);

D = zeros(n,n);
D(:,1) = y';

for j = 2:n
    for i = 1:n-j+1
        D(i,j) = (D(i+1,j-1) - D(i,j-1)) / (x(i+j-1) - x(i));
    end
end

yp = D(1,1);
prod = 1;

for i = 1:n-1
    prod = prod * (xp - x(i));
    yp = yp + D(1,i+1) * prod;
end

fprintf('Newton Interpolation result: f(%.2f) = %.4f\n', xp, yp);