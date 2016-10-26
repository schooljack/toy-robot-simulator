Toy Robot Simulator
===================
This Ruby application simulates a toy robot programmed to follow your commands except where such a command would result in its own death, or the death of a human. 

The toy robot stands on a table of size 5 x 5 and faces a cardinal direction (North, East, South, or West). It moves one space at a time in the direction it is facing. When changing it's direction, it moves 90° to the left or right. 

Usage
-----
This program requires Ruby to run. For installation click [here](https://www.ruby-lang.org/en/documentation/installation/). 

### File Mode
`./toy_robot.rb -f [file]`
Robot commands are saved in the `[file]` in plain text with each command seperated by a new line. 

### Argument Mode
`./toy_robot.rb [command] [command]`
Robot commands are each entered as command line arguments. 

### Valid Commands
`PLACE x,y,direction`
  Places the robot on the table at position x,y and facing direction. 
   * x y must be integers 
   * direction must be one of `NORTH`, `SOUTH`, `EAST`, or `WEST`.

`MOVE`
  Moves the robot one space on the table in the direction it is facing. 

`LEFT`
  Rotates the direction the robot is facing 90° to the left. 

`RIGHT`
  Rotates the direction the robot is facing 90° to the right.

`REPORT`
  Outputs the location and direction the robot is facing to stdout.

MIT License
------------

Copyright © 2016 Jack Kelly

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.