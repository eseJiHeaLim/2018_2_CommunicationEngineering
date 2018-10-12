x=randn(100,1);
x1=randn(1000,1);
x2=randn(10000,1);
x3=randn(100000,1);

hold on;
subplot(1,4,1)
histogram(x,'normalization','pdf');
f=pdf('Normal')
subplot(1,4,2)
histogram(x1,'normalization','pdf');

subplot(1,4,3)
histogram(x2,'normalization','pdf');

subplot(1,4,4)
histogram(x3,'normalization','pdf');