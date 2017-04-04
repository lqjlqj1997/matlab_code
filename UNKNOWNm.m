%Main game
function[playAgain] = game()
	clf;
    
    %SetLayout
    figure('Name', 'BlackJack', 'MenuBar', 'none');
	  %Give the player and the host 2 cards each
    %Card animation
    x=13.25;
    y=13.25;
    for i=0:10
        clf;
        axis([0,30,0,35]);
        set(gca,'xticklabel',{[]});
        set(gca,'yticklabel',{[]});
        rectangle('Position', [13.25 15.25 3.5 7]);
        rectangle('Position', [x-i y-i 3.5 7]);%coor(3.25,5.25)
        rectangle('Position', [x-i+4 y-i 3.5 7]);%coor(7.25,5.25)
        rectangle('Position', [x+i-4 y+i+2 3.5 7]);%coor(19.25,27.25)
        rectangle('Position', [x+i y+i+2 3.5 7]);%coor(23.25,27.25)
        pause(1/60);
    end
        
    %Create middle deck
	text(14.5, 19.25,'@');
    text(14.5, 14.25,'^^^');
    text(7.5, 13.25,'Click on the deck of cards to draw a card!');
	rectangle('Position', [13.25 15.25 3.5 7]);
    text(9, 23.25,'Click anywhere else to end turn!');
    

end
