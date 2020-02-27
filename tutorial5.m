% https://www.mathworks.com/help/matlab/ref/fft.html

Fs = 1000;            % Sampling frequency, samples per second                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal, number of samples
t = (0:L-1)*T;        % Time vector

% Form a signal containing a 50 Hz sinusoid of amplitude 0.7 and a 120 Hz 
% sinusoid of amplitude 1.
S = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);

figure;
plot(1000*t(1:50),S(1:50))
title('Original Signal')
xlabel('t (milliseconds)')
ylabel('X(t)')

% Compute the Fourier transform of the signal
Y = fft(S);

P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

figure;
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of S(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')