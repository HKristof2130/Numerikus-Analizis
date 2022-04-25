A = [1 3 0 0; 4 2 1 0; 0 2 -1 -1; 0 0 -1 0]; % vagy ha be kell kérni A = input('Adj meg egy tridiagonális mátrixot');
f = [7;8;5;0]; % -||- f= input('Add meg az eredményeket');

inga(A,f)



function x = inga(A,f)

n= length(f);
x= zeros(n,1);
l = zeros(n-1,1);
k = zeros(n-1,1);
l(1) = f(1)/A(1,1); %f1/c1
k(1) = -A(1,2)/A(1,1); %-b1/c1

for i= 2 : n-1
    
    nevezo = (A(i,i-1) * k(i-1)+ A(i,i));
    l(i) = (f(i)-A(i,i-1)*l(i-1));
    l(i) = l(i) / nevezo;
    k(i) = -A(i,i+1) / nevezo;
    
end

x(n) = f(n) - A(n,n-1)*l(n-1);
x(n) = x(n) / (A(n,n-1)*k(n-1) + A(n,n));

for i= n-1:-1:1
    x(i) = l(i) + k(i)* x(i+1);

end

end