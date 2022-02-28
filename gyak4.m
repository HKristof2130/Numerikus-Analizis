X = [0,0;pi/2,1;pi,0];
Y= (0:pi/8:pi)';
Y(:,2) = sin(Y);
Z = (0:0.5:5)';
for i=1:length(Z)
    Z(i,2) = 2*Z(i,1)^2-3*Z(i,1)+1;
end



f1 = erinto_form(X)
f2 = erinto_form(Y)
f3 = simpson_form(Z)
f4 = simpson_form(Y)






function f =  erinto_form(X);
    
    parity = mod(length(X),2);
    if( parity ~= 0 )
    
    form =0;
    for i=2:2:length(X)
        
        form = form + ( (X(i+1,1)-X(i-1,1))*X(i,2) );
        
    end
    f= form;
    else
        disp('Nem páratlan az elemek szama')
        f= -1;
    
    end
    
    
end


function s = simpson_form(X);
    
    parity = mod(length(X),2);
    if (parity ~= 0)
        
        tmp = 0;
        for i=2:2:length(X)
            tmp= tmp + ((X(i-1,2)+ 4*X(i,2)+X(i+1,2))/6)*(X(i+1,1)-X(i-1,1));
        end
        s=tmp;
    else
        disp('Nem páratlan a sorok száma')
        s=-1;
    end
end