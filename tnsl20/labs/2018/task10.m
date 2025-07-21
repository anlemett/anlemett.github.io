clear;

a = 15;
b = 25;

while a ~= b
    if a > b
        a = a - b;
    else
        b = b - a;
    end
end

disp(a);