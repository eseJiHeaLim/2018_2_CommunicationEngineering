%% num3
Fs= 23;
Ts=1/Fs;
t= 0:Ts:2;
x= 2*cos(24*pi*t);
plot(t,x)

% rms 구하기

rms(x)

%% num4
clear;clc;

t=0:0.01:4;
x=[]
for i=1:length(t)

    if (t(i)<1)
        x(i)=1;
    elseif t(i)>=1 && t(i)<2
            x(i)= -1;
    else 
            x(i)=0;
   end
end

plot (t,x)
hold on;

h=[]
for j=1:length(t)
    if (t(j)<1)
        h(j)=1*t(j);
    elseif t(j)>=1 && t(j)<2
            h(j)= (1*-t(j)+1)+1;
    else 
            h(j)=0;
   end
end

plot (h,x)
y=filter(h,1,x)*0.01
% res=conv(x,h,'same')  --> 이거랑 다른 이유가 뭐지
% res=res(1,[1 :364])
plot(t,y)


%% num5
clear;
% x=4*rand(100,1)+3
% 
% mean(x)
% var(x)

h=100;
w=randi(10,60,1)
c=cumsum(w)
W=c(end);
G=zeros(h,W,'uint8');
G(:,1:c(1))=randi(256)-1;
for i=2:60
    G(:,c(i-1)+1:c(i))=randi(256)-1;
end
imshow(G)

%% num6
% 아래는 초노가다 코드다 바보야
% res=[]
% for i=1:100000
%     N=100;
%     x=cumsum(randn(N,1));
%     y=cumsum(randn(N,1));
%     plot(x,y)
%     grid on;
%     axis equal;
%     X=x(end);
%     Y=y(end);
%     o=[0 0];
%     p=[X Y];
%     res(i)=pdist2(o,p);
% end
% 
% hist(res)
clear;
N=100;
M=10000;
x=cumsum(randn(N,M));
y=cumsum(randn(N,M));
r= hypot(x(end ,:),y(end,:));
histogram(r,'Normalization','pdf');
grid on;
%% num7
clear;clc;

fs = 100;
ts = 1/fs;
t = (0:ts:3);
s = sawtooth(2*pi*(t))/2;
figure;
plot(t,s)
hold on
% dsb-am 변조
x=s.*cos(2*pi*4*t);
% 
xlabel('time $t$ (sec)','Interpreter','latex');
%
plot(t,x)

%% num8
Fs = 10000;
Ts = 1/Fs; % sampling frequency, period
fc = 4; % carrier frequency

t = -3:Ts:3; % time

m=cos(2*pi*t)/2
mm=abs(m)
m=mm-m
% plot(t,mm-m)
% m = sawtooth(2*pi*(t))/2; % message signal

c = cos(2*pi*fc*t); % carrier signal
% modulation index: 1, 0.5, 0.2
X = (1+m).*c
mn=X/max(abs(X))

figure; plot(t, mn);
hold on; 

%% num 9

Fs=48e3;Ts=1/Fs;fc=8e3;  
%%circle  
t0=-1:Ts:1;  
r=4e3;  
f1=sqrt(r^2*(1-t0.^2));

% plot (t0,f1)
p1=cumsum(f1)*Ts;
%freqtophase 
s1=cos(2*pi*fc*t0+2*pi*p1);
%upperhalfcircle 
s2=cos(2*pi*fc*t0-2*pi*p1);
%lowerhalfcircle  
% plot(t0,s1)
s=s1+s2;
%fullcircle  
%%lines  
t1=0:Ts:1;  
c=cos(2*pi*fc*t1)+cos(2*pi*fc*t1);  
%%line-circle-line  
x=[2*c,s,2*c]; 
%%Instantaneousfrequencyplot  
spectrogram(x,512,256,512,Fs,'yaxis')

%% p14 코드
T = 1/10;
fs = 10000;
ts = 1/fs;
t = (-0.15:ts:0.15);
% x = t>=0;
x = sawtooth(2*pi*10*(t-0.05));
m = cos(2*pi*100*t+2*pi*100*cumtrapz(x)*ts);
figure(1);
plot(t,m);
figure(2);
plot(x);
grid on;