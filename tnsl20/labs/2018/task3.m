clear;

vector = [2, 3, 5, 6];
vector_length = length(vector);
prod = 1;

for i = 1: vector_length
    element = vector(i);
    prod = prod * element;
end

disp(prod);