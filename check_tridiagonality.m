A = [1 3 0 0; 4 2 1 0; 0 2 -1 -1; 0 0 -1 0]; % vagy ha be kell k?rni A = input('Adj meg egy tridiagon?lis m?trixot');
f = [7;8;5;0]; % -||- f= input('Add meg az eredm?nyeket');
inga = true;


for( i= 1 : length(A)-1)
    
   if A(i,i) == 0  
    
      inga= false; 
       
   end
end

if(inga)
  
   disp('Alkalmazhat?')
else
    disp('nem alkalmazhat?')
    
end