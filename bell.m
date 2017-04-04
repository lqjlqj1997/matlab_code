function [v] = bell(x)
if x<1
    print ('argument invalid');
else
    v=zeros(x:x);
    v(1,1)=1;
    for i=1:x
        b=1;
    for a=i:-1:1
        if a-1<=0
            v(a+1,b)=v(a,b);
            break
        else
            fprintf( '(%d,%d)',b,a);
            z=v(a-1,b)+v(a,b);
            v(a-1,b+1)=z;
            if a-2<= 0
                if i<x
                v(i+1,1)=v(a-1,b+1);
                end
                break
            end     
        end
    b=b+1;    
    end
    end
end
end