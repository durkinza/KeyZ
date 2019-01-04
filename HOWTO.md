# How To Compile
First download the repo.

Using a terminal, move into the keyFile directory.

### With make installed
Compiling with make is easy, just run 

`make key`

### Without make
You will need to run three commands (using g++) 
This first will compile the key.cpp to an output file

`g++ -O3 -g -Wall -pedantic -Wno-write-strings -Wno-vla -c -o key.o key.cpp`

Next to compile the smaz.cpp to and output file

`g++ -O3 -g -Wall -pedantic -Wno-write-strings -Wno-vla -c -o smaz.o smaz.cpp`

Finally combine the two output files to create one complete key command

`g++ -O3 -g -Wall -pedantic -Wno-write-strings -Wno-vla key.o smaz.o  -o key`
