clear;

% part 1
M = rand(3, 3);

% part 2
disp('M(2, 3)');
disp(M(2, 3));

% part 3
disp('M(3, 1)');
disp(M(3, 1));

% part 4
disp('M(2, :)');
disp(M(2, :));

% part 5
disp('M(:, 3)');
disp(M(:, 3));

% part 6
M(2, 3) = 100;
disp('M(2, 3)');
disp(M(2, 3));

% part 7
M(3, 3) = 200;
disp('M(3, 3)');
disp(M(3, 3));

% part 8
number_of_columns = size(M, 2);

disp('Columns of M');
for column = 1:number_of_columns
    disp(M(:, column));
    disp('----------------------');
end

% part 9
number_of_rows = size(M, 1);
number_of_columns = size(M, 2);

for row = 1:number_of_rows
    for column = 1:number_of_columns
        M(row, column) = M(row, column) + rand();
    end
end
