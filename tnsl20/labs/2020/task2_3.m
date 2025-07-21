clear;

a = input('Please enter the first number: ');
b = input('Please enter the second number: ');

while a~=b
    
    if a>b
        a = a-b;
    else
        b = b-a;       
    end
end

disp("GDA: ")
disp(a)
    