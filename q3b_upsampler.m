%Upsampling

% Input signal 'x'
F = [0,0.2,0.9,1]; 
A = [0,1,0,0];
x = fir2(128,F,A);

% x=[1 2 3 4]

X = fft(x,1024);
f = 0:1/1024:(512-1)/1024 ;

subplot(4,1,1)
plot(f,abs(X(1:512)))

L = 2; 
y2 = zeros(1,L*length(x));
y2([1:L:length(y2)]) = x;
Y2 = fft(y2,1024);

subplot(4,1,2)
plot(f,abs(Y2(1:512 )))

L = 3;
y3 = zeros(1,L*length(x));
y3([1:L:length(y3)]) = x; 
Y3 = fft(y3,1024 ); 

subplot(4,1,3)
plot(f,abs(Y3(1:512 )))

L = 4;
y4 = zeros(1,L*length(x));
y4([1:L:length(y4)]) = x;
Y4 = fft(y4,1024 ); 

subplot(4,1,4), plot(f,abs(Y4(1:512 )))

y = interp(x,2);
Y = fft(y,1024 ); 

figure
plot(f,abs(Y(1:512 )))
