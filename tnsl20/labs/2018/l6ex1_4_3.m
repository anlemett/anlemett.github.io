clear;

M = [1, 2, 1; 4, 5, 2; 1, 3, 2];
sum_of_elements = 0;

number_of_rows = size(M, 1);
number_of_columns = size(M, 2);

% for each row
for row = 1:number_of_rows
    % for each column
    for column = 1:number_of_columns
        sum_of_elements = sum_of_elements + M(row, column);
    end
end

disp(sum_of_elements);