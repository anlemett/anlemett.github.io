clear ; clc; close all;

B = [
	0 1 0 0 0 0;
	0 0 1 0 0 0;
	0 1 0 1 0 1;
	1 0 0 0 0 1;
	0 0 0 1 0 1;
	1 0 0 1 1 0
];

figure;
G2 = digraph(B);
plot(G2);

edge_list = [
	1, 2;
	2, 3;
	3, 2;
	3, 4;
	3, 6;
	4, 1;
	4, 6;
	5, 4;
	5, 6;
	6, 1;
	6, 4;
	6, 5
];

edge_weights = 1;

G3 = digraph(edge_list(:, 1), edge_list(:, 2), edge_weights);
figure;
plot(G3);
