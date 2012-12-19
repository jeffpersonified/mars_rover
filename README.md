mars_rover
==========

This application is built with 3 classes: rover, plateau, and navigation. As best as I could, I tried to limit the amount of knowledge each had of the other, with each instance of the rover class aware of its orientation, movements, and a limited knowledge of the plateau on which it resides. Similarly, Plateau instances contain knowledge of their width, height, and whether or not a given coordinate is contained therein. Finally, the Navigation class is where the majority of the logic resides, with it instantiating the other classes. Frankly, I would like to strip this latter class of some of that logic - it is slightly brittle. 

I made the assumption that the input file would be formatted correctly, and the program is built around that assumption. I also assumed that two rovers could contain the same space on a grid.

The program is run by executing the "mars_rovers.rb" file within the "mars_rovers" directory and passing the name of the text file as an argument. For example, running the following command within the "mar_rover" directory:

    ruby mars_rovers.rb input.txt

runs the program with th text file currently in the directory. The program then outputs the final rover coordinates to a file called "output.txt".


The Problem
===========

PROBLEM THREE: MARS ROVERS
 
A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.
 
A rover's position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.
 
In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot. 'M' means move forward one grid point, and maintain the same heading.
 
Assume that the square directly North from (x, y) is (x, y+1).
 
INPUT:
The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.
 
The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover's position, and the second line is a series of instructions telling the rover how to explore the plateau.
 
The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover's orientation.
 
Each rover will be finished sequentially, which means that the second rover won't start to move until the first one has finished moving.
 
 
OUTPUT
The output for each rover should be its final co-ordinates and heading.
 
INPUT AND OUTPUT
 
Test Input:
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM
 
Expected Output:
1 3 N
5 1 E