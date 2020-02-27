%% Time specifications:
Fs = 8000;                   % samples per second
dt = 1/Fs;                   % seconds per sample
StopTime = 0.05;             % seconds
t = (0:dt:StopTime-dt)';     % seconds
%% Sine wave:
Fc = 1200;                   % hertz
x = cos(2*pi*Fc*t);
% Plot the signal versus time:
figure;
plot(t,x);
xlabel('time (in seconds)');
title('Signal versus Time');

%% Spectrogram
% Defaults to hamming window
% See: https://www.mathworks.com/help/signal/ref/spectrogram.html
figure;
spectrogram(x)

%% Example
figure;
% Divide the signal into sections of length 128, windowed with a Hamming window.
window = 128; % Samples
% Specify 120 samples of overlap between adjoining sections. 50% is a good
% starting point
overlap = 128 * .5; 

% FFT length
% Longer the length => more frequency bins
f = 256;

% Sample rate is the number of samples per unit time. If the unit of time 
% is seconds, then the sample rate is in Hz
fs = Fs; % sample rate decided earlier

spectrogram(x,window,overlap,f,fs)
