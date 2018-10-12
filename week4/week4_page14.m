N = 8;
x = [0 0 1 1 1 1 0 0];
X = fft(x)/N;
figure(1);
stem(0:N-1, abs(X), 'fill');
grid on;