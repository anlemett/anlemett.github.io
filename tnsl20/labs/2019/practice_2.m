clear;

v = [1, 7, 5, 3];

for i=1:length(v)
    for j=1:length(v)
        if v(i) <= v(j)
            disp([v(i), v(j)]);
        end
    end
end