x=rand(100,1);
x1=rand(1000,1);
x2=rand(10000,1);
x3=rand(100000,1);

hold on;
subplot(1,4,1)
histogram(x,'normalization','pdf');

subplot(1,4,2)
histogram(x1,'normalization','pdf');

subplot(1,4,3)
histogram(x2,'normalization','pdf');

subplot(1,4,4)
histogram(x3,'normalization','pdf');