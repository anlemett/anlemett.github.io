clear;

M = rand(4, 4) ;
number_of_rows = size(M, 1) ;

% for each row
for row = 1:number_of_rows
    disp(M(row, :)) ; % print value
end