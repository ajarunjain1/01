%  y[n]-0.9y[n-1]=x[n]
b=1;
a=[1 -0.9]; %  y[n]-0.9y[n-1]=x[n], can be expanded for any kind of function  

x1=[1 2 3 4];
y1=filter(b,a,x1);

x2=[1 1 1 1];
y2=filter(b,a,x2);

x3=x1+x2;
y3=filter(b,a,x3);

y4=y1+y2;

% Check if y3==y4

subplot(2,1,1);
stem(y3);
xlabel('sample space');
ylabel('Amplitude');
title('Linearity of Signal-1 by Using D.E');
axis([-10 10 0 20]);
grid on;

subplot(2,1,2);
stem(y4,'k');
xlabel('sample space');
ylabel('Amplitude');
title('Linearity of Signal 2 by Using D.E');
axis([-10 10 0 20]);
grid on;

if (y3-y4~=0)
    disp('Non linear');
else
    disp('Linear');
end