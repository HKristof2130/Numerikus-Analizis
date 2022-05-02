A = [1 3 0 0; 4 2 1 0; 0 2 -1 -1; 0 0 -1 0]; % vagy ha be kell kérni A = input('Adj meg egy tridiagonális mátrixot');
f = [7;8;5;0]; % -||- f= input('Add meg az eredményeket');
inga = true;


for( i= 1 : length(A)-1)
    
   if A(i,i) == 0  
    
      inga= false; 
       
   end
end

if(inga)
  
   disp('Alkalmazható')
else
    disp('nem alkalmazható')
    
end