ECE281_Lab2
===========

lab2

#Truth table for single bit adder

|  A |  B  |  Cin  |  Sum  |  Cout  |
|--:|--: |--: |--:| --:|
|  0 |  0  |  0  |   0 |   0 |
|  0 |  0  |  1  |   1 |   0 |
|  0 |  1  |  0  |   1 |   0 |
|  0 |   1 |  1  |   0 |   1 |
|  1 |  0  |  0  |   1 |   0 |
|  1 |  0  |  1  |   0 |   1 |
|  1 |  1  |  0  |   0 |   1 |
|  1 |  1  |  1  |   1 |   1 |

#Minimal SOP equations
I derived the basic equations using karnaugh maps but had to look up the simplified equation with xor in it from online sources. 

Sum=A'B'C+A'BC'+ABC+AB'C'=A xor B xor C

Cout=AB+BC+AC

#Schematic of single adder
![alt tag] (https://raw2.github.com/TylerSpence/ECE281_Lab2/master/schematic.gif)

#Schematic of four bit adder/subtractor
![alt tag] (https://raw2.github.com/TylerSpence/ECE281_Lab2/master/schematic.gif)

Documentation:
gamezero.com

#Waveform of single adder
![alt tag] (https://raw2.github.com/TylerSpence/ECE281_Lab2/master/screenshotonebit.png)

#Waveform of four bit adder
![alt tag] (https://raw2.github.com/TylerSpence/ECE281_Lab2/master/waveform.png)

The waveform corresponds exactly to the truth table. 

#Debuggining:
I was having trouble implementing the if, then logic for the multiplexor so I consulted Captain Trimble and she assisted me by helping me to understand the concept of a process. I had to begin a process before I could do the actual for loop.
After this I was having issues understanding the concept of what the button should acually do, so I consulted Captain Silva and he took time to explain to me exactly what the button would do in terms of the B inputs and the carry in.
