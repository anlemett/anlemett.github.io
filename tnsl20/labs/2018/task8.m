clear;

v = [4, 6, 9, 10];

for i=v
    for j=v
        if i ~= j
            disp([i, j]);
        end
    end
end