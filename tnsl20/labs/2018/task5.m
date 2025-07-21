clear;

v = [10, -2, -331, 1, -100, 201];

v_positive = [];
v_negative = [];

for e=v
    if e > 0
        v_positive = [v_positive, e];
    end
    
    if e < 0
        v_negative = [v_negative, e];
    end
end

v_concat = [v_positive, v_negative];

disp('Positive elements of v:');
disp(v_positive);

disp('Length of v_positive');
disp(length(v_positive));

disp('Negative elements of v:');
disp(v_negative);

disp('Length of v_negative');
disp(length(v_negative));

disp('All elements of v:');
disp(v_concat);

disp('Length of v_concat');
disp(length(v_concat));
