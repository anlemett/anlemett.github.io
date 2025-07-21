clear; close all;

A = [
  0 0 0 1 1 1;
  1 0 1 0 0 0;
  0 0 0 0 0 1;
  0 0 0 0 0 1;
  0 0 0 0 0 0;
  0 0 0 0 1 0;
];

O = [2, 1, 3, 4, 6, 5];






% INSERT YOUR CODE HERE








% Visualize the graph and hightlight the shortest path to the last vertex from
% the first vertex
n = O(end);

%n = 6; % uncomment this if you want to highlight the shortest path to some
% specific vertex, e.g., 6

edge_list = [];
weights = [];

for i=1:size(A, 1)
    for j=1:size(A, 2)
        if A(i, j) > 0
            edge_list = [edge_list; i, j];
            weights = [weights, A(i, j)];
        end
    end
end

G = digraph(edge_list(:, 1), edge_list(:, 2), weights);
h = plot(G, 'EdgeLabel', G.Edges.Weight);

path = [n, ];
predecessor = p(n);
    
while predecessor ~= 0
    path = [path, predecessor];
    predecessor = p(predecessor);
end

highlight(h, path, 'NodeColor', 'g');

for i=1:length(path)-1
    highlight(h, path(i+1), path(i), 'EdgeColor', 'g');
end