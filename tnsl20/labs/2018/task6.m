clear;

vector = [-3, 100, -5, -6, 20, 7];
vector_length = length(vector);
prod = 1;

for i = 1:vector_length
    element = vector(i);
    if element < 0
        prod = prod * element;
    end
end

disp(prod);