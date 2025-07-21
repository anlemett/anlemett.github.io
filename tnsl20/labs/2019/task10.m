clear; close all;

A = [
    0, 1, 1, 0, 1, 0;
    0, 0, 0, 0, 1, 1;
    0, 0, 0, 0, 0, 1;
    0, 0, 1, 0, 0, 1;
    0, 0, 0, 0, 0, 1;
    0, 0, 0, 0, 0, 0
];

% Part 1

B = A;
B(2, 1) = 1;

figure;
G = digraph(B);
plot(G);

% Part 2

C = A;
vertices = 2:6;

for i = 1:length(vertices)
    C(vertices(i), 1) = 1;
end

figure;
G = digraph(C);
plot(G);

% Part 3

D = A;

for i = 1:size(D, 1)
    D(i, 6) = 0;
end

figure;
G = digraph(D);
plot(G);