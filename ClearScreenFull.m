function flipped = ClearScreenFull(scr, use_1440fps)
% this function clears the screen and does this until the screen is refreshed
% by RS

if use_1440fps == 1 % propixx at 1440 Hz is used
    flipped = 0;
    while flipped == 0
        Screen('FillRect', scr.myimg, [scr.bg scr.bg scr.bg 1]); % clear screen with 100% alpha
        flipped = PsychProPixx('QueueImage', scr.myimg);
    end
else % normal screen is used
    Screen('FillRect', scr.win, [scr.bg scr.bg scr.bg 1]); % clear screen with 100% alpha
    flipped = Screen('Flip', scr.win);
end
