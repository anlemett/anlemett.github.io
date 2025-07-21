clear;

v = [1, 15, 7, 26, 13, 78, 19];

sum = 0;

for i=1:length(v)
    if v(i) > 10 && v(i) < 20
        sum = sum + v(i);
    end
end

disp('The sum is: ');
disp(sum);