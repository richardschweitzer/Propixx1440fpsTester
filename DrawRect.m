function DrawRect(scr, use_1440fps, col, center, dimensions)
    % position of the rect
    rect = round([center(1) - dimensions(1)/2, center(2) - dimensions(2)/2, ...
              center(1) + dimensions(1)/2, center(2) + dimensions(2)/2]);
    % draw the rect
    if use_1440fps == 1 
        Screen('FillRect', scr.myimg, [col col col 1], rect); 
    else
        Screen('FillRect', scr.win, [col col col 1], rect); 
    end
end
