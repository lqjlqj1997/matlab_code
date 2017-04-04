function [x]=star()
x = 20;
y = 20;
while 1
    clf;
    axis([0 20 0 20]);
    
    rectangle('Position',[x y 10 10])
    x = x-1;
    y = y-1;
   
    c=timer(ginput(1),1);
    pause(1);
    c
end
end

