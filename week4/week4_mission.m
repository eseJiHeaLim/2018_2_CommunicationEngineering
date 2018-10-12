T=1e-3;
Fs=1e5;
Ts=1/Fs;
t=-2*T:Ts:2*T;
x=2*tripuls(t,20e-3);

figure(1);plot(t,x)

xlabel('time $t$ (sec)', 'Interpreter', 'latex');
fd = 10; % frequency resolution
N = 2^(nextpow2(ceil(Fs/fd)));
%()���� ������ ū 2�� �����߿� ���� ���� �������� �������� ��ȯ // 2�� �������� ������...
X = fft(x, N)*Ts;
Xc = fftshift(X);
XcdB = 20*log10(abs(Xc));
f = Fs/2*([0:N-1]-N/2)/N; figure(2);
plot( f, XcdB-max(XcdB), 'LineWidth', 2 );
grid on; xlim(3e3*[-1 1]); ylim([-100 0]);
xlabel('frequency $f$ (Hz)', 'Interpreter', 'latex');
ylabel('normalized power (dB)');