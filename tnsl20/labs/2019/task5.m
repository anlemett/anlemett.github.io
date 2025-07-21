clear;

v = [2, 3, 5, 6];

prod = 1;

for i=1:length(v)
    prod = prod*v(i);
end

disp('Product of numbers in v is:');
disp(prod);