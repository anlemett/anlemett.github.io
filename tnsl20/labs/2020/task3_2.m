clear ; clc;

number_of_elements = input("Enter the number of elements in a vector: ");

a = randi([-100,100],1,number_of_elements)
b = randi([-100,100],1,number_of_elements)

%Prints one by one all elements of the second vector which are less than
%the element of the first vector at the same index

noResult = true;

% for each column
for index = 1: number_of_elements
    if (b(index)<a(index))
        disp(b(index))
        noResult = false;
    end
end

if (noResult)
    disp("No such elements")
end
