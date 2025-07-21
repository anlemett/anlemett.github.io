clear;

A = [
    10, 20;
    30, 10;
    50, 60;
    52, 19;
    65, 12;
    74, 234;
    53, 23
];

for row=1:size(A, 1)
    disp(A(row, :)); % print the row of the matrix
    disp('&&&&&&&&&&&&&&&&&&&&&'); % print line of &
end