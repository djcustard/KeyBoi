# /{KeyBoi}\

## ~{BUILT FOR THE SERIOUS}~

KeyBoi is a Supercollider SynthDef which allows for the interpretation of Keyboard input to control synthesis. Stutter Delay and  Pitch Shift tools have also been applied.

```diff
+  Instructions for Use:

+ 1. Create a larger server memory allocation by running the s.options code line (4)

+ 2. Boot your server

+ 3. Add the ~outSignal bus to your server by running codeline 9

+ 4. Add the SynthDef to your server by recalling this code bracket

+ 5. Initialise KeyBoi by running codeline 99.

+ When finished, run codeline 102 to free the synth and end the signal processing.

```
 KeyBoi invites the manipulation and interpretation of the code so if you end up creating a new version, please upload it to this repository as it is public. I am excited to see how people change the system.
 
 **Controls:**
 
 _Tone:_ 
 
 - J = Lowest Pitch
 - K = Low-Med Pitch
 - L = Hi-Med Pitch
 - ; = High Pitch
 
 _Stutter Delay:_
 
 - R = Slow Build to Slow Pulse
 - T = Medium Build
 - Y = Fast Build (_Burst!_)
 
_Pitch Shift:_
 
 - 1 = Fast Increase and Slow Slide
 
 _LFO Modulation:_
 
 - Mouse X-Axis = Increase in Modulation of up to 500Hz (_Oscillation Audible_)
 - Mouse Y-Axis = Increase in Modulation of up to 500Hz (_Oscillation Audible_)

```diff
-  Troubleshoot Guide:

- If you have followed the instructions and still find no sound, I recommend following these steps:

- 1. Reboot the server, perhaps when initialising KeyBoi, the synth may have been creating sound already. This has occurred previously and produces a notable click. When initialising KeyBoi again, ensure not to press the synth controls.

- 2. If there is still no sound, this synth was built using vanilla SuperCollider 3.10.2 . Perhaps trying to run this code through the same version may provide more luck.

- 3. After these steps if there is still no sound, please send information about your setup and I will try to tackle these problems. (Perhaps this may be due to increasing the server memory allocation.)

```

Thanks for checking out KeyBoi! Please contact me for further information.

