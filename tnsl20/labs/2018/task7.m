clear;
v = [1, 5, 11, 19, 4, 24, 31, 15];
v_and = [];
v_or  = [];
v_not = [];

for i=1:length(v)
    element = v(i);
    
    if v(i)>=10 && v(i)<20 
        v_and = [v_and, element];
    end
    
    if v(i)<10 || v(i)>30
        v_or = [v_or, element];
    end
    
    if ~(v(i)<20) && ~(v(i)>30)
        v_not = [v_not, element];
    end
end

disp('Vector v_and:')
disp(v_and);
disp('Vector v_or:')
disp(v_or);
disp('Vector v_not:')
disp(v_not);

