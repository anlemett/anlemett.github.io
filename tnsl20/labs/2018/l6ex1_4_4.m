clear;

M = [1, 2, 1; 4, 5, 2; 1, 3, 2];
maximum = -9999999999; % we can use -Inf instead

number_of_rows = size(M, 1);
number_of_columns = size(M, 2);

% for each row
for row = 1:number_of_rows
    % for each column
    for column = 1:number_of_columns
        if M(row, column) > maximum
            maximum = M(row, column);
        end
    end
end

disp(maximum);
