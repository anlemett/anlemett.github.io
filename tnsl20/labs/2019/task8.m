clear;

goal = 40; % how many Fibonacci numbers to compute

% first two Fibonacci numbers
before_last = 1;
last = 1;

disp(before_last);
disp(last);

for i=2:goal-1
    % compute next number in the sequence
    next = before_last+last;
    disp(next);
    
    % update two previous numbers
    before_last = last;
    last = next;
end