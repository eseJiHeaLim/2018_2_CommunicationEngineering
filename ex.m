clear;clc;


a=100;
b=200;
x=rand(10000,1);
y=a+(b-a)*x;

y_y=2*y;
z=4*y-2;
% histogram(x,'normalization','pdf');

mean(y)
var(y)
std(y)

mean(y_y)
var(y_y)
std(y_y)

mean(z)
var(z)
std(z)
