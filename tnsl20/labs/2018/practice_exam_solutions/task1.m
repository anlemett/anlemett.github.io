clear;

v = [1, 15, 7, 26, 13, 78, 19];

a = [];

for i=1:length(v) % for each i from 1 to the number of elements in v
    element = v(i); % assign to variable element the value from vector v at position i
    if element > 10 && element < 20
        a = [a, element];
    end
end

disp(a);