clear; clc; close all;

A = [
    0 1 0 0 0 0;
    0 0 1 0 0 0;
    0 1 0 1 0 1;
    1 0 0 0 0 1;
    0 0 0 1 0 1;
    1 0 0 1 1 0
];

disp('==================================');
disp('Original adjacency matrix');
disp(A);

% Plot the graph using adjacency matrix
figure;
G1 = digraph(A);
plot(G1);

number_of_vert = size(A,1);


% Convert adjacency matrix -> edge list
edge_list = [];

for k=1:number_of_vert
    for l=1:number_of_vert
        if A(k,l) == 1
            new_row = [k, l];
            edge_list = [edge_list; new_row];
        end    
    end
end

disp('==================================');
disp('Edge list from adjacency matrix');
disp(edge_list);

edge_weights = 1;

G2 = digraph(edge_list(: ,1), edge_list(: ,2), edge_weights);

% Plot the graph using edge list
figure;
plot(G2);

% Convert edge list back to adjacency matrix
new_A = zeros(size(A));

number_of_edges = size(edge_list, 1);

for k=1:number_of_edges
    new_A(edge_list(k,1), edge_list(k,2)) = 1;
end

disp('==================================');
disp('Adjacency matrix from edge list');
disp(new_A);

% Plot the same graph using the adjacency matrix obtained by convertation from edge list to adjacency matrix
figure;
G3 = digraph(new_A);
plot(G3);

