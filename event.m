function []= event()
a=0;
b=0;
avr()=[];
event()=[];
gymnast1()=[];
gymnast2()=[];
win()=[];
while(1)
    event(a)=input('event name');
    gymnast1(a)=input('enter gymnast1 ');
    gymnast2(a)=input('enter gymnast2 ');
    if gymnast1(a)<gymnast2(a)
        win(a)=['gymnast2'];
    end
    if gymnast1(a)==gymnast2(a)
        win(a)=['draw'];
    end
    if gymnast1(a)>gymnast2(a)
        win(a)=['gymnast1'];
    end
    avr(a)=mean(gymnast1(a),gymnast2(a));
    b=input('input 1 to add new event,2 to exit');
    if b==2
        break
    end
end

disp('event\tgymnast1\tgymnast1')
    for i=0:1:a
        disp (event(i),'  ',gymnast1,'  ',gymnast2)
    end
    

end