%A = input('Adj meg egy mátrixot: ');
%b = input('Add meg a b vektort: ');
%x = input('Adj meg egy kezdõ vektort: ');
A = [5,-2,2;4,10,-3;1,2,5];
b = [9;5;18]
x = [0;2;2]

s = jacobi(A,b,x)







function j = jacobi(matrix,b,start)

e = 0.01;


for i=1 : length(matrix)

    for j=1 : length(matrix)
    
           if( i == j)
               diagonal(i,j) = matrix(i,j);
           else
               diagonal(i,j) = 0;
           end
    
    end
        

end


lower = tril(matrix)-diagonal;
upper = triu(matrix)-diagonal;

x1 = start;



x2 = -1*(inv(diagonal)*(lower+upper)*x1)+ inv(diagonal)*b

while( norm(x2-x1) > e)

    x1 = x2;
    x2 = -1*(inv(diagonal)*(lower+upper)*x1)+ inv(diagonal)*b
    

end

    j = x2;

end



% seidel programozni
