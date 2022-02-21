%X = input('Add meg az x értékeket!')
%Y = input('Add meg az y értékeket!')
X = [0,pi/6,pi/3,pi/2];
Y = [1,3^(1/2)/2,1/2,0];
tegla1 = cosTeglalap1(X)
tegla12 = teglalap1(X,Y)
tegla2 = teglalap2(X,Y)
tegla3 = teglalap3(X,Y)
trapez1 = trapez(X,Y)





function t1 = cosTeglalap1(X);
    tmp = 0;
    for i=1: length(X)-1
        tmp= tmp+cos(X(i))*(X(i+1)-X(i));
    end
    
    t1=tmp;
end

function t1 = teglalap1(X,Y);

    tmp=0;
    for i=1 : length(X)-1
       tmp= tmp + Y(i)*(X(i+1)-X(i)); 
    end

    t1 = tmp;

end

function t2 = teglalap2(X,Y);
    tmp=0;
    for i=1 : length(X)-1
       tmp= tmp + Y(i+1)*(X(i+1)-X(i)); 
    end
    t2 = tmp;
end

function t3 = teglalap3(X,Y);
    tmp=0;
    for i=1: length(X)-1
       tmp= tmp+ (Y(i)-(1/2))*(X(i+1)-X(i)); 
    end

    t3 = tmp;
end

function t4 = trapez(X,Y);
   tmp=0;
   for i=1: length(X)-1
       tmp= tmp + ((Y(i)+Y(i+1))/2)*(X(i+1)-X(i));
   end
   
   t4=tmp;

end