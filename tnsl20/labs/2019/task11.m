clear;

M = [
    1, -10, 20; 
    3, -5, -3
];

product = 1;

for row = 1:size(M, 1)
    for col = 1:size(M, 2)
        if M(row, col) < 0
            product = product * M(row, col);
        end
    end
end

disp('The product is: ');
disp(product);