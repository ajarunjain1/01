D=5;

b=1;
a=[1 -0.9]; %  y[n]-0.9y[n-1]=x[n], can be expanded for any kind of function  
x=[1 2 3 4];
y=filter(b,a,x);

xd=[zeros(1,D) x]
yd=filter(b,a,xd);

figure
subplot 211
stem(x)
subplot 212
stem(xd)

figure
subplot 211
stem(y)
subplot 212
stem(yd)