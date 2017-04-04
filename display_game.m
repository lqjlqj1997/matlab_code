function []=display_game(v,u)
    clf
    axis([0 110 0 110])
    grid on
    [Cx2,Cy2]=find(v==1)
    [Cx1,Cy1]=find(u==1)

    [Ex2,Ey2]=find(v==10)
    [Ex1,Ey1]=find(u==10)
    N_enemy=size(Ex1,1)
    EN_enemy=size(Ex2,1);
    if EN_enemy<N_enemy
        a=find((find(Ex1==Cx2)==find(Ey1==Cy2))==1);
        Ex1(a)=[];
        Ey1(a)=[];
        N_enemy=N_enemy-1;
    end
    Ax1=[Cx1-1;Ex1-1]
    Ay1=[Cy1-1;Ey1-1]
    Ax2=[Cx2-1;Ex2-1]
    Ay2=[Cy2-1;Ey2-1]
                    
    
    for i= 1:(N_enemy+1)
        if Ax1(i)~=Ax2(i)||Ay1(i)~=Ay2(i)
            
            
            x1=Ax1(i)*10
            y1=Ay1(i)*10

            x2=Ax2(i)*10
            y2=Ay2(i)*10

            ix=(x2-x1)/60
            iy=(y2-y1)/60
                
                for k=1:60
                        x1=x1+ix
                        y1=y1+iy
                    clf
                    axis([0 110 0 110])
                    grid on
                    if i==1
                        rectangle('Position',[x1+2,y1+2,6,6],'Curvature',[1,1]);
                    end
                    if i~=1
                    rectangle('Position',[x1+2,y1+2,6,6])
                    end
                    for j=1:N_enemy+1
                        if j~=i&&j~=1
                            rectangle('Position',[(Ax1(j)*10)+2,(Ay1(j)*10)+2,6,6]);
                        end
                        if j~=i&&j==1
                            rectangle('Position',[(Ax1(j)*10)+2,(Ay1(j)*10)+2,6,6],'Curvature',[1,1]);
                        end
                    end
    
                    pause(1/120)    
                end
                x1
                y1
                Ax1
                Ay1
                Ax1(i)=round(x1/10)
                Ay1(i)=round(y1/10)
        end
    end

Ax1
Ay1
end