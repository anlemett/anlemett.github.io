clear; close all;

E = [
    1, 2;
    2, 3;
    3, 5;
    4, 5;
    6, 7;
    2, 8;
    8, 7;
    3, 8;
]; % edge list
M = [
    1, 2;
    4, 5;
    6, 7;
]; % subset of edges M to test whether it is a matching or not


% Code to test whether M is a matching or not

is_matching = true;
for i=1:size(M, 1)- 1
    % Picking on edge from M
    u1 = M(i,1);
    v1 = M(i,2);
    
    for j=i+1:size(M, 1)
        % Picking another edge from M
        u2 = M(j,1);
        v2 = M(j,2);
        
        % If these two edges share at least one endpoint, then we change
        % value of is_matching to false
        if u1 == u2 || u1 == v2 || v1 == u2 || v1 == v2
            is_matching = false;
        end
    end
end

% disp(is_matching); % this simply prints 0 or 1

% Print whether M is a matching or not
if is_matching
    disp('M is a matching');
else
    disp('M is not a matching');
end

% Plot graph and highlight edges

G = graph(E(:, 1), E(:, 2));
h = plot(G);
highlight(h, M(:, 1), M(:, 2), 'EdgeColor', 'r'); % 'g' - green, 'r' - red, 'b' - blue, etc