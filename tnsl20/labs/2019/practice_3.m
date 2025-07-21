clear;

n = 4;
m = 3;

M = rand(n, m);

summ = 0;

for row=1:size(M, 1)
    for col=1:size(M, 2)
       summ = summ + M(row, col); 
    end
end

% summ = sum(sum(M)); % short solution