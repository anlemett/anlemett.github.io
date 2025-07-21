clear ; clc; close all;

A = [
	0 1 0 1 0 0;
	1 0 1 0 0 0;
	0 1 0 1 0 1;
	1 0 1 0 1 1;
	0 0 0 1 0 1;
	0 0 1 1 1 0
];

figure ;
G = graph(A);
plot(G);

edge_list = [
	1, 2; 
	1, 4; 
	2, 3; 
	3, 4; 
	3, 6; 
	4, 5; 
	4, 6; 
	5, 6
];

edge_weights = 1;

G3 = graph(edge_list(: ,1), edge_list(: ,2), edge_weights);
figure;
plot(G3);


