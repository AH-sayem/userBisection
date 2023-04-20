function userBisectio(str)

for n=1:100 
    x=n ;
    A(n)=eval(str) ;
    fa=A(n);
    x=(n+1) ;
    B(n)=eval(str) ;
    fb= B(n);
    
    if fa*fb < 0 
        a= n
        b= n+1 
    else 
        continue 
    end
    
    for n= 1:100 
    p(n) = a ;
    q(n)=b ;
    x=a ;
    fa=eval(str) ;
    x=b ;
    fb=eval(str) ;
  %  x=(a*fb-b*fa)/(fb-fa);
    x=(a+b)/2;
    g(n)= x;
    f(n)=eval(str) ;
    if f(n) < 0 
        a=x ;
    else 
        b=x ;
    end 
    if n>2 
        diff= g(n)-g(n-1);
        if abs(diff) <= .0001
            break 
        end
    end
end 

  k=1:n ;
  s=[k' p' q' g' f' ]
  
end

    

