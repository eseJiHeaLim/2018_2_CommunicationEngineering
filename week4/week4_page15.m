clc;clear;close all;

N = 256;
xn = [ones(64,1); zeros(128,1);ones(64,1)];
Xk = fft(xn) / N;
t = -4:0.01:4;

%256�� 
n = -128:127;

% �Է� �μ��� �� ���� ������ ũ�⸦ ������ ��
figure(1);
stem(n, fftshift(abs(Xk)));

grid on; xlim(10*[-1 1]);

%abs�� ������ �׷���
figure(2); 
stem(n, fftshift(Xk));
grid on ; xlim(10*[-1 1])
%%
clc;clear;close all;

s = Xk(1);
for k=2:10
s = s + Xk(k)*exp(2i*pi*(k-1)*t) ...
+ Xk(N-k+2)*exp(-2i*pi*(k-1)*t);
end
figure(2);
plot( t, s); grid on;