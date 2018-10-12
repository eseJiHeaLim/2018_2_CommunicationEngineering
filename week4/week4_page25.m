Fs = 1000; 
Ts= 1/Fs;
t = -5:Ts:5;
x1 = rect (t, 1.0);
x2 = rect (t, 0.2);
figure(1); plot(t, x1, t,x2, 'LineWidth', 1); grid on ;
xlabel( 'time $t$ (sec)' , 'Interpreter' , 'latex' );
axis([-2 2 0 1.2]);
N = length(t);
X1 = fft (x1) * Ts ; X1a = abs( fftshift (X1));
X2 = fft (x2) * Ts ; X2a = abs( fftshift (X2));
f = Fs*( -N/2:N/2 -1)/N;
figure(2); plot(f, X1a, f, X2a, 'LineWidth', 1); grid on ;
xlabel( 'frequency $f$ (Hz)' , 'Interpreter' , 'latex' );
xlim ( 10*[ -1 1])