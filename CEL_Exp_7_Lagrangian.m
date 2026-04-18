clc;
clear;

A = [1 2 2.5 3 4 5;
     0 5 7 6.5 2 0];

xp = 3.4;

x = A(1,:);
y = A(2,:);

n = length(x);
yp = 0;

for i = 1:n
    L = 1;
    for j = 1:n
        if j ~= i
            L = L * (xp - x(j)) / (x(i) - x(j));
        end
    end
    yp = yp + L * y(i);
end

fprintf('Lagrange Interpolation result: f(%.2f) = %.4f\n', xp, yp);