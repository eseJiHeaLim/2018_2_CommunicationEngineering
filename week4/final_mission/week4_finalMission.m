% Low-pass filter
% 10�� ¥�� ������ Low-pass filter�� �����Ų��

[y1, Fs]=audioread('music10.mp3');

Ts=1/Fs;
n=length(y1);
t=  (0:n-1)*Ts;

% ������ LPF ���Ϳ� �Ÿ���
y2=filter(lowpass2,1,y1);

% ��� �׷��� 
hold on;
plot(t,y1,'r');
plot(t,y2,'b')  

% �Ҹ� ���
% sound(y1,Fs)
sound(y2,Fs)

