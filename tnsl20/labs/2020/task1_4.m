clear;

income = input('Please enter your income and press Enter: '); % The text between parenthesis will be printed as an invitation

if income < 0 || income >= 10000000
    disp('The following tax estimation is preliminary, please contact your local tax agency branch.')
end

if income < 1000
    taxes = 0;
elseif income >= 1000 && income < 3000
    taxes = income * 0.1;
else
    taxes = income * 0.4;

    if taxes > 10000
        taxes = 10000;
    end
end

disp('Total taxes are:')
disp(taxes)