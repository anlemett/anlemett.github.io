clear ; clc;

number_of_rows = input("Enter the number of rows: ");
number_of_columns = input("Enter the number of columns: ");

M = randi([-100,100],number_of_rows,number_of_columns)

% The product of all negative elements in the column (for each column)
disp("The product of all negative elements in the column (for each column)")

% for each column
for column = 1: number_of_columns
    prod = 1;
    noNegative = true;
    % for each row
    for row = 1: number_of_rows
        if (M(row, column)<0)
            prod = prod * M(row, column);
            noNegative = false;
        end
    end
    if (noNegative)
        disp("No negative elements")
    else
        disp(prod);
    end
end

% The minimum element of the matrix and the row with this element
disp("The minimum element of the matrix and the row with this element")

min = M(1, 1);
min_row = 1;

% for each row
for row = 1: number_of_rows
    % for each column
    for column = 1: number_of_columns
        if (M(row, column) < min)
            min = M(row, column);
            min_row = row;
        end
    end
end

disp(min)
disp(M(min_row,:))
