% Low-pass filter
% 10초 짜리 음악을 Low-pass filter를 통과시킨다

[y1, Fs]=audioread('music10.mp3');

Ts=1/Fs;
n=length(y1);
t=  (0:n-1)*Ts;

% 설계한 LPF 필터에 거르기
y2=filter(lowpass2,1,y1);

% 결과 그래프 
hold on;
plot(t,y1,'r');
plot(t,y2,'b')  

% 소리 재생
% sound(y1,Fs)
sound(y2,Fs)

