%% Basics

%% Comment block
% This is a comment

%% The following statement declares a variable, x, and assigns it the
% primitave value (double) of 5.71
% Note: MATLAB is a loosely or weakly-typed language, so you do not have to
% declare a variable type
x = 5.71;

%% This statement displays the value of x to the command window. Similar to
% printf. 
disp(x);

%% The following declares a variable, A, and assigns it to an Array of 4
% values, 6, 7, 8, 9
A = [6 7 8 9];
disp("The contents of variable A are:");
disp(A);

% You can access an element (matlab is 1 indexed), using the following:
disp("The first item in array A: ");
v = A(1);
disp(v);

% Scale all values in an array
disp("A scaled:");
A = A * 2;
disp(A);

% Get a range of values
disp("Range of value");
disp(A(1:2))

% Sum two arrays
disp("Sum two arrays");
disp([1,2,3,4] + [5,5,5,5])

%% This command closes all open/previously opened figures
close all

%% Create a figure instance. If you want multiple windows/plots, you must
% create a figure for each.
% There is a default figure. If plot is called before creating a figure, it
% will use a default figure

f1 = figure;

%% Create and display a plot of A with all default settings. It will open a
% new window
plot(A);


%% Create a new figure, also sets the current figure to f2
f2 = figure;

% Create a new array B
B = [1,2,3,2,1,2,3,2,1];
% plot will now use the current figure (f2)
plot(B);

% You can plot multiple arrays on the same figure using "hold on"
f3 = figure;

plot([1,2,3,4]);

% Merge the next plot on the current figure. If you dont use "hold on" it
% will completly over write the previous plot 
hold on

plot([2,6,2,6,2,6]);

% You can also set labels and titles of the current figure
ylabel('y axis label');
xlabel('x axis label');
title('Figure 3 with two plots');
