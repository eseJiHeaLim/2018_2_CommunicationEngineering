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

fs = 10000;
ts = 1/fs;
t = (0:ts:3);
s = sawtooth(2*pi*(t))/2;
% plot(t,s)
% dsb-am 변조
x=s.*cos(2*pi*4*t');
% 
xlabel('time $t$ (sec)','Interpreter','latex');
% 
plot(t,x)
% spectrogram(x,512,256,512,Fs)
% spectrogram(x(1,:),512,256,512,Fs,'yaxis')


%% num 9

fs = 10000;
ts = 1/fs;
t = (0:ts:3);
% x = t>=0;
m = sawtooth(2*pi*10*(t-0.05));

% 순간 주파수 구하기

x   = cos(2*pi*4000*t);

figure(1);
%  spectrogram(x, 512, 256, 256, Fs, 'yaxis' );

fi  = 200 + 50*cos(0.2*pi*t);
figure(2);
plot( t, fi, 'LineWidth', 2 ); grid on;
xlabel('time $t$ (sec)', 'Interpreter', 'latex');
ylabel('frequency $f_i$ (Hz)', 'Interpreter', 'latex');
ylim([0 500]);


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