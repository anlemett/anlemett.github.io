clear;

a = input('Please enter the number: ');

while a~=0
  if a < 0
    disp ('Negative');
  else
    disp ('Positive');
  end
  a = input('Please enter the number: ');
end