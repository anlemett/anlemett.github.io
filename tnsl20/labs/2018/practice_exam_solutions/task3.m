clear;

m = 4;
n = 3;
A = zeros(m, n);

for row=1:size(A, 1)
    for col=1:size(A, 2)
        A(row, col) = row - col;
    end
end

disp(A);