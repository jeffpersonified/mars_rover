mars_rover
==========

This application is built with 3 classes: rover, plateau, and navigation. As best as I could, I tried to limit the amount of knowledge each had of the other, with each instance of the rover class aware of its orientation, movements, and a limited knowledge of the plateau on which it resides. Similarly, Plateau instances contain knowledge of their width, height, and whether or not a given coordinate is contained therein. Finally, the Navigation class is where the majority of the logic resides, with it instantiating the other classes. Frankly, I would like to strip this latter class of some of that logic - it is slightly brittle. 

I made the assumption that the input file would be formatted correctly, and the program is built around that assumption. I also assumed that two rovers could contain the same space on a grid.

The program is run by executing the "mars_rovers.rb" file within the "mars_rovers" directory and passing the name of the text file as an argument. For example, running the following command within the "mar_rover" directory:

    ruby mars_rovers.rb input.txt

runs the program with th text file currently in the directory. The program then outputs the final rover coordinates to a file called "output.txt".