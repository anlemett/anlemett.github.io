clear; close all;

I = [1, 2, 3]; % IS
% I = [1, 2, 3, 5]; % not IS

A = [
    0, 0, 0, 0, 1;
    0, 0, 0, 0, 0;
    0, 0, 0, 1, 0;
    0, 0, 1, 0, 0;
    1, 0, 0, 0, 0
];

% is_independent_set = ~any(any(A(I, I))); % one line solution

is_independent_set = true;

if length(I) > 1
    for v_index = 1:(length(I)-1)
        v = I(v_index);
        
        for w_index = (v_index+1):length(I)
            w = I(w_index);
            
            if A(v, w) == 1
                is_independent_set = false;
            end
        end
    end
end

if is_independent_set
    disp('I is an independent set of G');
else
    disp('I is not an independent set of G');
end

figure;
G = graph(A);
h = plot(G);
highlight(h, I, 'NodeColor', 'r');
