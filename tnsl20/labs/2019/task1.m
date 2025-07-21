clear;

num_couriers_on_cars = 4; % number of couriers on cars
num_couriers_on_bicycles = 2; % number of couriers on bicycles

salary_car = 1500; % salary of a car courier per month
salary_bicycle = 1200; % salary of a bicycle courier per month

car_maintenance_cost = 400; % maintenance cost for a car per month
bicycle_maintenance_cost = 100; % maintenance cost for a bicycle per month
tax = 0.4; % 40% tax

% Compute the total salary before taxes
total_salary_before_taxes = salary_car * num_couriers_on_cars + salary_bicycle * num_couriers_on_bicycles;
disp('Total salary before taxes is:');
disp(total_salary_before_taxes);

% Compute the total salary after taxes
total_salary_after_taxes = total_salary_before_taxes + total_salary_before_taxes*tax;
disp('Total salary after taxes is:');
disp(total_salary_after_taxes);

% Compute the total maintenance cost per month
total_maintenance_cost = car_maintenance_cost * num_couriers_on_cars + bicycle_maintenance_cost * num_couriers_on_bicycles;
disp('Total maintenance cost is:');
disp(total_maintenance_cost);

% Compute the total cost per month
total_cost = total_maintenance_cost + total_salary_after_taxes;
disp('Total cost is:');
disp(total_cost);



