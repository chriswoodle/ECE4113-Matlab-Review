% Looping

%% While loop

disp("Simple While loop");
i = 1;
while i < 10
    disp(i);
    i = i + 1; % Matlab does not suppott the "++" operator
end

%% For loop

disp("Simple loop");
for i = 1:5
    disp(i);
end

disp("Loop through all items in an array:");
a = (10:20);
for i = 1:length(a)
    item = a(i);
    disp(item);
end

