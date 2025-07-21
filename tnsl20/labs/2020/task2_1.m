clear;

for i=1:5
    n = input('Please enter the number: ');

    if rem(n, 2) == 1 
        disp("Odd")
    else 
        disp("Even")
    end
end