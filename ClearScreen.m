function ClearScreen(scr, use_1440fps)
    % this function draws a large rectangle on the screen to clear it, so that one can draw on it
    
    if use_1440fps == 1 
        Screen('FillRect', scr.myimg, [scr.bg scr.bg scr.bg 1]); % clear screen with 100% alpha
    else
        Screen('FillRect', scr.win, [scr.bg scr.bg scr.bg 1]); % clear screen with 100% alpha
    end
end
