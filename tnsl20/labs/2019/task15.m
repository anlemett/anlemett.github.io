clear; close all;

% From adjacency matrix to edge list
A = [
    0, 1, 1, 1, 0, 0;
    0, 0, 0, 0, 1, 1;
    0, 0, 0, 0, 0, 1;
    0, 0, 0, 0, 0, 1;
    0, 0, 0, 0, 0, 1;
    0, 0, 0, 0, 0, 0;
];

num_of_rows = size(A, 1);
num_of_cols = size(A, 2);
edge_list = [];

for row=1:num_of_rows
    for col=1:num_of_cols
        if A(row, col) == 1
            edge_list = [edge_list; [row, col]];
        end
    end
end

disp('Original adjacency matrix:');
disp(A);

disp('Edge list:');
disp(edge_list);

G = digraph(edge_list(:, 1), edge_list(:, 2));
plot(G);

% From edge list to adjacency matrix
A_new = zeros(size(A));

for edge_index=1:size(edge_list, 1)
    edge = edge_list(edge_index, :);
    row = edge(1);
    col = edge(2);
    A_new(row, col) = 1;
end

disp('New adjacency matrix:');
disp(A_new);