clear;

s = input('Please enter the string: ', 's');

if length(s) < 8
  disp ('Too short');
elseif length(s) >16
  disp ('Too long');
else
  disp ('Fine');
end
