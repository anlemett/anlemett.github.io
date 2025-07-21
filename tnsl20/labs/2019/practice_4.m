clear;

E = [
  1, 2;
  3, 1;
  5, 6;
  5, 1;
  6, 1;
  7, 2;
  5, 2
];

for row=1:size(E, 1)
    disp(E(row, :));
    disp('&&&&&&&&&&&&&&');
end