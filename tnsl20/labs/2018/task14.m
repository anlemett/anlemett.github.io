clear;

E = [
  1, 2;
  1, 4;
  2, 3;
  2, 5;
  4, 5;
  3, 6;
  6, 7;
  7, 3;
  5, 1;
  5, 7;
  6, 4;
];
C = [1, 2];

G = graph(E(:, 1), E(:, 2));
h = plot(G);
highlight(h, C, 'NodeColor', 'g');

covered_edges = []; % this line is for highlighting edges

is_vc = true;

for i = 1:size(E, 1)
    u = E(i, 1);
    v = E(i, 2);
    
    covered = false;
    for j = 1:length(C)
        if C(j) == u || C(j) == v
            covered = true;
        end
    end
    
    if ~covered
        is_vc = false;
    else
        covered_edges = [covered_edges; u, v]; % this line is for highlighting edges
    end
end

highlight(h, covered_edges(:, 1), covered_edges(:, 2), 'EdgeColor', 'r'); % this line is for highlighting edges

if is_vc
    disp('C is a vertex cover of G');
else
    disp('C is not a vertex cover of G');
end