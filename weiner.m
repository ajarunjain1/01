% Number of samples
N = 40000;
n = 0:N-1;

% d(n) Desired signal
d = sin(2*pi*n./12);
x = d(2:N);
d = d(1:N-1);

corr_x = xcorr(x, 'unbiased');
for i=0:1
    for j=0:1
        R_xx(i+1,j+1) = corr_x(N-1+i-j);
    end
end

corr_xd = xcorr(d,x,'unbiased');
for i=0:1
    R_dx(i+1) = corr_xd(N-1-i);
end

W_ls = inv(R_xx)*(R_dx)' 