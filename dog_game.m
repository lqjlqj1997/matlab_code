function [] = dog_game()
v=zeros (10);
u=zeros (10);
v(5,5) = 1;
points=0;
enemy=zeros (10);
enemy(randi(10),randi(10))= 10;
jump = 10;

while 1
    
    
%spawn enermy
if(find(v==1)== find(enemy==10))||(points/10==floor(points/10))    
enemy=zeros (10);
enemy(randi(10),randi(10))= 10;
end

if ~(find(v==1)== find(enemy==10))
    if (points/10==floor(points/10))
    v=v+enemy;
    end
    if (points/10==floor(points/10))
        clf;
    [Ea,Eb]=find(v==10);
    N_enemy=size(Ea,1);
    [a,b]=find(v==1);
    axis([0 110 0 110])
    grid on
    rectangle('Position',[0,100,100,10],'FaceColor','w','EdgeColor','w')
    rectangle('Position',[100,0,10,110],'FaceColor','w','EdgeColor','w')                
    text(5,105,sprintf('Current Points: %d      JUMP Left : %d',points,jump),'Color','r','FontSize',10) 
                    
    line([0,100,100],[100,100,0],'color','k')
    for i=1:N_enemy
        rectangle('Position',([((Ea(i)-1)*10)+2,((Eb(i)-1)*10)+2,6,6]));
    end
    rectangle('Position',[((a-1)*10)+2,((b-1)*10)+2,6,6],'Curvature',[1,1])
   
    end
    
    
    
    fprintf('Current points: %d\nJUMP left : %d',points,jump)
    u=v;
    move= menu ('Movement','up','down','left','right','jump');
    [a,b]=find(v==1);
    if move==1 && b+1<=10
    v(a,b+1)=v(a,b+1)+v(a,b);
    v(a,b)=0;
    end
    if move==2 && b-1>0
    v(a,b-1)=v(a,b-1)+v(a,b);
    v(a,b)=0;
    end
    if move==3 && a-1>0
    v(a-1,b)=v(a-1,b)+v(a,b);
    v(a,b)=0;
    end
    if move==4 && a+1<=10
    v(a+1,b)=v(a+1,b)+v(a,b);
    v(a,b)=0;
    end
    

if move==5 && jump>0
v(randi(10),randi(10))=1;
v(a,b)=0;
jump = jump -1;
end

pause(1/10);

[Ea,Eb]=find(v==10);
N_enemy=size(Ea,1);
[a,b]=find(v==1);
if move~=5
for i=1:N_enemy
   x=Ea(i)-a;
   y=Eb(i)-b;
   if abs(x)>=abs(y)
       if x<0&&v(Ea(i)+1,Eb(i))~=10
           v(Ea(i)+1,Eb(i))=v(Ea(i)+1,Eb(i))+v(Ea(i),Eb(i));
           v(Ea(i),Eb(i))=0;
       end
       if x>0&&v(Ea(i)-1,Eb(i))~=10
           v(Ea(i)-1,Eb(i))=v(Ea(i)-1,Eb(i))+v(Ea(i),Eb(i));
           v(Ea(i),Eb(i))=0;
       end
   end
    if abs(x)<abs(y)
       if y<0&&v(Ea(i),Eb(i)+1)~=10
           v(Ea(i),Eb(i)+1)=v(Ea(i),Eb(i)+1)+v(Ea(i),Eb(i));
           v(Ea(i),Eb(i))=0;
       end
       if y>0&&v(Ea(i),Eb(i)-1)~=10
           v(Ea(i),Eb(i)-1)=v(Ea(i),Eb(i)-1)+v(Ea(i),Eb(i));
           v(Ea(i),Eb(i))=0;
       end
    end
end
end
points=points+1;
if (isempty(find(v==11)))
display_game(v,u,points,jump); 
end

if (~isempty(find(v==11)))
    fprintf('the final the score : %d',points)
    break
end

end


end