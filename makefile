BIN=key

SRCS=\
key.cpp\
smaz.cpp

OBJS=\
key.o\
smaz.o

HDRS= smaz.h

CXX=g++

dbug=gdb

LIBS=

CXXFLAGS=-O3 -g -Wall -pedantic -Wno-write-strings -Wno-vla 
#-Wc++11-compat-deprecated-writable-strings
#CXXFLAGS=-g -Wall # use for debugging code

$(BIN): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) $(LIBS) -o $(BIN)

all : 
	touch $(SRCS)
	make

tar :
	tar -cvf $(BIN).tar $(SRCS) $(HDRS) makefile

debug : $(OBJS)
	$(CXX) -g $(OBJS) -o $(BIN) 
	$(dbug) $(BIN)

clean :
	rm -f $(OBJS) $(BIN)
	
clobber :
	rm -f $(OBJS) $(BIN) $(BIN).tar
