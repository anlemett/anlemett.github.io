clear; close all;

A = [
    0, 0, 0, 0, 1;
    0, 0, 0, 0, 0;
    0, 0, 0, 1, 0;
    0, 0, 1, 0, 0;
    1, 0, 0, 0, 0
];

P = randperm(size(A, 1));
I = [];

for i = 1:length(P)
    T = [I, P(i)];
    
    is_independent_set = true;

    if length(T) > 1
        for v_index = 1:(length(T)-1)
            v = T(v_index);

            for w_index = (v_index+1):length(T)
                w = T(w_index);

                if A(v, w) == 1
                    is_independent_set = false;
                end
            end
        end
    end

    if is_independent_set
        I = [I, P(i)];
    end
end

figure;
G = graph(A);
h = plot(G);
highlight(h, I, 'NodeColor', 'r');
