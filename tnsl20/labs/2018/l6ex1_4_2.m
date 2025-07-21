clear;

M = zeros(4, 4);

number_of_rows = size(M, 1);
number_of_columns = size(M, 2);

% for each row
for row = 1:number_of_rows
    % for each column
    for column = 1:number_of_columns 
        M(row, column) = M(row, column) + 2; % add 2
    end
end
