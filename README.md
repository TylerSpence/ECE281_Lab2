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

Documentation:
gamezero.com

#Schematic of four bit adder
![alt tag] (https://raw2.github.com/TylerSpence/ECE281_Lab2/master/finalschematic.jpg)

#Waveform of single adder
![alt tag] (https://raw2.github.com/TylerSpence/ECE281_Lab2/master/screenshotonebit.png)

#Waveform of four bit adder
![alt tag] (https://raw2.github.com/TylerSpence/ECE281_Lab2/master/waveform.png)

The waveform corresponds exactly to the truth table. 

#Walkthrough
First, I created the single bit adder using behavioral coding, then I re made it using component declarations, and from this began building the four bit adder.
The four bit adder was set up by assigning signals to the carry outs of the four individual adders that made it up
```vhdl
adder_0 : adder PORT MAP(
  A => A(0),
  B => B1,
  Cin => sig0,
  Sum => O(0),
  Cout => sig1
 );
```
This enabled me to carry any carry outs into the next adder. 
Once this was created, the four bit adder essentially worked. After this, I began creating the subtractor by contrlling the carry in and creating an option to invert all of the B inputs. This was done by creating a multiplexor and the design of that component is covered in the debugging section. 
Once it was all created, it merely had to be implemented through a ucf file.
```ucf
NET "A(0)" LOC = "G18"; 
NET "A(1)" LOC = "H18";
NET "A(2)" LOC = "K18";
NET "A(3)" LOC = "K17"; 
NET "B(0)" LOC = "L14";
NET "B(1)" LOC = "L13";
NET "B(2)" LOC = "N17"; 
NET "B(3)" LOC = "R17";
NET "X" LOC = "B18";

NET "O(0)" LOC = "J14";
NET "O(1)" LOC = "J15";
NET "O(2)" LOC = "K15";
NET "O(3)" LOC = "K14";
NET "Cout" LOC = "E17";
```
X controls the subtractor funtionality by making the carry in '1' and inverting the B inputs, essentially performing the two's complement of the number.
Any over flow is viewed on the fifth light as represented by Cout.

#Debuggining:
I was having trouble implementing the if, then logic for the multiplexor so I consulted Captain Trimble and she assisted me by helping me to understand the concept of a process. I had to begin a process before I could do the actual for loop.
After this I was having issues understanding the concept of what the button should acually do, so I consulted Captain Silva and he took time to explain to me exactly what the button would do in terms of the B inputs and the carry in.
