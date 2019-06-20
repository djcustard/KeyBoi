# /{KeyBoi}\

## ~{BUILT FOR THE SERIOUS}~

### KeyBoi is a Supercollider SynthDef which allows for the interpretation of Keyboard input to control synthesis. Stutter Delay and  Pitch Shift tools have also been applied.

```diff
+ ## _Instructions for Use:_

+ _1. Create a larger server memory allocation by running the s.options code line (4)._

+ _2. Boot your server_

+ _3. Add the ~outSignal bus to your server by running codeline 9_

+ _4. Add the SynthDef to your server by recalling this code_

+ _5. Initialise KeyBoi by running codeline 99._

+ _When finished, run codeline 102 to free the synth and end the signal processing._

```
### KeyBoi invites the manipulation and interpretation of the code so if you end up creating a new version, please upload it to this repository as it is public. I am excited to see how people change the system.

```diff
- ## _Troubleshoot Guide:_

- _If you have followed the instructions and still find no sound, I recommend following these steps:_

- _1. Reboot the server, perhaps when initialising KeyBoi, the synth may have been creating sound already. This has occurred previously and produces a notable click. When initialising KeyBoi again, ensure not to press the synth controls.

- _2. If there is still no sound, this synth was built using vanilla SuperCollider 3.10.2 . Perhaps trying to run this code through the same version may provide more luck.

- _3. After these steps if there is still no sound, please send information about your setup and I will try to tackle these problems. (Perhaps this may be due to increasing the server memory allocation.)

```

