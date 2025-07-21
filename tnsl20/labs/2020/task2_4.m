clear;

number_of_bottles = 99;

for i = 1:number_of_bottles
    num = number_of_bottles - i + 1;
    disp([num2str(num) ' bottles of mjölk on the wall, ' num2str(num) ' bottles of mjölk.']);
    disp(['Take one down, pass it around, ' num2str(num-1) ' bottles of mjölk on the wall.']);
    disp(' ');
end

disp('No more bottles of mjölk on the wall, no more bottles of mjölk.');
disp('We''ve taken them down and passed them around; now we''re healthy and strong!');