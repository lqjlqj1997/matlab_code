function []=inptutest(a,b)
c==0;
while 1
if c==0
a=star()
c==1
end
a
b
if c==1
clf;
axis([0 20 0 20]);
    

rectangle('Position',[a b 10 10])
c=0;
end
[x,y]=ginput(1)
a=x
b=y
end
end