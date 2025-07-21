clear;

number = input('Enter the number of visitors: ');

visitors = zeros(number, 2);
total_price = 0;

for i=1:number
    age = input(['Enter the age of visitor ' num2str(i) ':']);
    visitors(i, 1) = age;
    
    if age <= 10
        price = 0;
    else
        price = 110;
    end
    
    visitors(i, 2) = price;
    total_price = total_price + price;
end

disp('Visitor age and price');
disp(visitors);

disp('==============================')
disp(['Total price: ' num2str(total_price)]);