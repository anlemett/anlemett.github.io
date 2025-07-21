clear;

m = 4;
n = 3;

M = zeros(m, n);

for i=1:m
    for j=1:n
        M(i, j) = i - j;
    end
end

disp('The resulting matrix: ');
disp(M);