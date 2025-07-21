clear;
managerSalaries = 1000:1000:9000;

% disp(v);
disp('Value of the 4th element of managerSalaries is: ');
disp(managerSalaries(4));


disp('Value of the 5th element of managerSalaries before change is: ');
disp(managerSalaries(5));
managerSalaries(5)= managerSalaries(5)-300;
disp('Value of the 5th element of managerSalaries after change is: ');
disp(managerSalaries(5));

disp('Elements of managerSalaries with indices 3-7 are: ');
disp(managerSalaries(3:7));


socialismSalaries = ones(1, 10) * 2000;

disp('Vector socialismSalaries is:');
disp(socialismSalaries);