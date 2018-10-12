t=linspace(0,0.03,100);
s=cos(200*pi*t);
s_i=0.2*sin((600*pi*t) + (pi/12));
hold on;
plot(t,s,'b')
plot(t,s_i,'r')
xlabel('time $t$ (sec)','Interpreter','latex')