clear;

number_of_bottles = 99;

for i = 1:number_of_bottles
    num = number_of_bottles - i + 1;
    disp([num2str(num) ' bottles of mj�lk on the wall, ' num2str(num) ' bottles of mj�lk.']);
    disp(['Take one down, pass it around, ' num2str(num-1) ' bottles of mj�lk on the wall.']);
    disp(' ');
end

disp('No more bottles of mj�lk on the wall, no more bottles of mj�lk.');
disp('We''ve taken them down and passed them around; now we''re healthy and strong!');