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

Sum=A'B'C+A'BC'+ABC+AB'C'=A xor B xor C

Cout=AB+BC+AC

#schematic of single adder
![alt tag] (https://raw2.github.com/TylerSpence/ECE281_Lab2/master/schematic.gif)

Documentation:
gamezero.com

#Waveform of single adder
![alt tag] (https://raw2.github.com/TylerSpence/ECE281_Lab2/master/screenshotonebit.png)

Waveform of four bit adder
![alt tag] (https://raw2.github.com/TylerSpence/ECE281_Lab2/master/waveform.png)

The waveform corresponds exactly to the truth table. 
