clear;

v = [1, 7, 5, 3];

for i=1:length(v)
    for j=1:length(v)
        if v(i) <= v(j) % if the first number in the pair is less or equal to the second one
            disp([v(i), v(j)]);
        end
    end
end