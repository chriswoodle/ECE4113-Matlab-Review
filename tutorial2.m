%% More Array
%% Array  Range
% Create an Array containing 0-5

a = (0:5);
disp(a);
%% Create array specifying start, end and step size

startValue = 0;
endValue = 10;
stepSize = 0.5;

b = (startValue:stepSize:endValue)';
disp(b);
%% pi is built in

disp(pi);
%% cos function

disp(cos(pi));

% also can apply cos to an array
c = [0, 1/2 * pi, pi, 5/2 * pi, 2 * pi];
disp(c);

d = cos(c);
disp(d);