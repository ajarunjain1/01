function[k] = fir_to_lattice(N,vec)
%disp(vec);
k = zeros(1,N);
%disp(k);
%disp(vec(N));

for j=1:N-1
    n = N+1-j;
    a = vec;
    k(n-1) = a(n);
    vec=[];
    for i=1:n
        x = a(i) - k(n-1)*a(n+1-i);
        x = x/(1-k(n-1)*k(n-1));
        if i<n
            vec = [vec x];
        end 
    end 
    %disp(vec);
end



% [k] = fir_to_lattice(4, [1 13/24 5/8 1/3])
% 
% k =
% 
%     0.2500    0.5000    0.3333         0
%     
    
% [k,v] = tf2latc([1], [1 13/24 5/8 1/3])
