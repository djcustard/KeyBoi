// Keyboi created by David Tucker (2019)

//Begin by increasing server memory allocation
s.options.memSize = 65536;

//Boot up your server

// Run this line of code to add this Bus to the server
~outSignal = Bus.audio(s,2);

// Recalling the SynthDef will then also add this to the server

(
SynthDef( \keyBoi, {
	arg out1, out2;
	var ampLOsc1, ampROsc1, ampLOsc2, ampROsc2, ampLOsc3, ampROsc3, ampLOsc4, ampROsc4, sinOscFreq1, sinOscFreq2, sinOscFreq3, sinOscFreq4, sig1, sig2, sig3, sig4, sig5, sig6, sig7, sig8, base1, base2, base3, base4, stutterVal1, stutterVal2, stutterVal3;

	//Each key acting as a gate, controller the amplitude of the Sine oscillators

	ampLOsc1 = KeyState.kr(38, 0, 0.02, 9.5); // J
	ampROsc1 = KeyState.kr(38, 0, 0.02, 9.5);
	ampLOsc2 = KeyState.kr(40, 0, 0.02, 8); // K
	ampROsc2 = KeyState.kr(40, 0, 0.02, 8);
	ampLOsc3 = KeyState.kr(37, 0, 0.02, 9); // L
	ampROsc3 = KeyState.kr(37, 0, 0.02, 9);
	ampLOsc4 = KeyState.kr(41, 0, 0.02, 9.5); // ;
	ampROsc4 = KeyState.kr(41, 0, 0.02, 9.5);

	//Each sine oscillator having a different frequency with unique manipulation

	sinOscFreq1 = KeyState.kr(18, 100, 1000, 3);
	sinOscFreq2 = KeyState.kr(18, 400, 4000, 3);
	sinOscFreq3 = KeyState.kr(18, 800, 8000, 3);
	sinOscFreq4 = KeyState.kr(18, 1000, 10000, 3);


	//Frequency Modulation via Delay C, frequency controlled here

	stutterVal1 = KeyState.kr(15, 0, 500, 20);
	stutterVal2 = KeyState.kr(17, 0, 100, 10);
	stutterVal3 = KeyState.kr(16, 0, 100, 1);

	//Control values are transformed into audible Sine Osilattor's

	base1 = SinOsc.ar(sinOscFreq1);
	base2 = SinOsc.ar(sinOscFreq2);
	base3 = SinOsc.ar(sinOscFreq3);
	base4 = SinOsc.ar(sinOscFreq4);

	//Frequency and Amplitude being multiplied

	sig1 = base1*ampLOsc1;
	sig2 = base1*ampROsc1;
	sig3 = base2*ampLOsc2;
	sig4 = base2*ampROsc2;
	sig5 = base3*ampLOsc3;
	sig6 = base3*ampROsc3;
	sig7 = base4*ampLOsc4;
	sig8 = base4*ampROsc4;

	// Delay/Sample Frequency Modulation

	sig1 = DelayC.ar(sig1, 1, SinOsc.ar(stutterVal1+stutterVal2+stutterVal3));
	sig2 = DelayC.ar(sig2, 1, SinOsc.ar(stutterVal1+stutterVal2+stutterVal3));
	sig3 = DelayC.ar(sig3, 1, SinOsc.ar(stutterVal1+stutterVal2+stutterVal3));
	sig4 = DelayC.ar(sig4, 1, SinOsc.ar(stutterVal1+stutterVal2+stutterVal3));
	sig5 = DelayC.ar(sig5, 1, SinOsc.ar(stutterVal1+stutterVal2+stutterVal3));
	sig6 = DelayC.ar(sig6, 1, SinOsc.ar(stutterVal1+stutterVal2+stutterVal3));
	sig7 = DelayC.ar(sig7, 1, SinOsc.ar(stutterVal1+stutterVal2+stutterVal3));
	sig8 = DelayC.ar(sig8, 1, SinOsc.ar(stutterVal1+stutterVal2+stutterVal3));

	//LFO Mouse Control

	sig1 = sig1*SinOsc.ar(MouseX.kr(0,500,0,0.5));
	sig2 = sig2*SinOsc.ar(MouseY.kr(0,500,0,0.5));
	sig3 = sig3*SinOsc.ar(MouseX.kr(0,500,0,0.5));
	sig4 = sig4*SinOsc.ar(MouseY.kr(0,500,0,0.5));
	sig5 = sig5*SinOsc.ar(MouseX.kr(0,500,0,0.5));
	sig6 = sig6*SinOsc.ar(MouseY.kr(0,500,0,0.5));
	sig7 = sig7*SinOsc.ar(MouseX.kr(0,500,0,0.5));
	sig8 = sig8*SinOsc.ar(MouseY.kr(0,500,0,0.5));

	//Output Signal

	Out.ar(out1,Splay.ar(sig1));
	Out.ar(out1,Splay.ar(sig3));
	Out.ar(out1,Splay.ar(sig5));
	Out.ar(out1,Splay.ar(sig7));

	Out.ar(out2,Splay.ar(sig2));
	Out.ar(out2,Splay.ar(sig4));
	Out.ar(out2,Splay.ar(sig6));
	Out.ar(out2,Splay.ar(sig8));

}).add;
)

//Initialise KeyBoi
y = Synth.new(\keyBoi, ~outSignal);

//Release KeyBoi (End Sound)
y.free;



