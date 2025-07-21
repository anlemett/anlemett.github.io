clear;

A = rand(4, 4);

sum = 0;

for row=1:size(A, 1)
    for col=1:size(A, 2)
        sum = sum + A(row, col);
    end
end

disp(A);
disp(sum);