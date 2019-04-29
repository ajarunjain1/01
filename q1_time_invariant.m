D=5;

b=1;
a=[1 -0.9]; %  y[n]-0.9y[n-1]=x[n], can be expanded for any kind of function  
x=[1 2 3 4];
y=filter(b,a,x);

xd=[zeros(1,D) x]
yd=filter(b,a,xd);
yd_dash = [zeros(1,D) y]

if yd-yd_dash~=0
    disp('Not Time-Variant')
else
    disp('Time Invariant')
end

subplot 211
stem(yd_dash)
subplot 212
stem(yd)