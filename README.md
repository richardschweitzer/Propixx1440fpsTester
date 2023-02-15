# Propixx1440fpsTester

This repository contains the minimal script [TestPropixx1440fps.m](../main/TestPropixx1440fps.m) (as well as some helper functions) showing how to run the Propixx DLP projector (VPixx Technologies) at 1440 fps with Psychtoolbox.

The script can be run at both 120 fps (FullHD mode) and 1440 fps (half FullHD resolution, no color), see variable *use_1440fps*. It performs a few timing tests, that is, whether you have dropped any frames and how long each of the 12 *PsychProPixx('QueueImage', scr.myimg)* processes have taken (only in 1440-fps mode), so that it can be used to test the sanity of your setup. 

As a stimulus, the script uses a flickering (alternating white and black) central rectangle on gray background. If your screen is gamma calibrated (and the Propixx should come as such by default) and you have something like 60 Hz or more (set *desired_n_frames_per_polarity* accordingly), then the flicker should somewhat merge with the background. The sharp edges may remain visible, but this is largely due to eye movements. 

This demo is clearly greatly indebted Mario Kleiner's amazing work with the *PsychProPixx* function. 

Note that this script is not a substitute for serious testing of stimulus timing with photodiodes. For some examples on how to do this, please see [our 2020 paper](https://doi.org/10.3758/s13428-019-01304-3) for a sophisticated setup, or [an approach based on the LM03 lightmeter](https://github.com/richardschweitzer/LM03_lightmeter) for cheap and simple testing. 
