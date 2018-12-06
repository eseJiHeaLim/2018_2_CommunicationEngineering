% 순간 주파수 구하기
Fs  = 1000; Ts = 1/Fs;
t   = (0:Ts:20);
m   = sin(2*pi*0.1*t);
x   = cos(2*pi*200*t + 500*m);
figure(1);
spectrogram(x, 256, 128, 256, Fs, 'yaxis' );
fi  = 200 + 50*cos(0.2*pi*t);
figure(2);
plot( t, fi, 'LineWidth', 2 ); grid on;
xlabel('time $t$ (sec)', 'Interpreter', 'latex');
ylabel('frequency $f_i$ (Hz)', 'Interpreter', 'latex');
ylim([0 500]);
