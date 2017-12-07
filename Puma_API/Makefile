IDIR=.
CC=gcc
CPP=g++
CLFAGS=-I$(IDIR)
ODIR=obj

_DEPS = serial_talk.h Puma_OP.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = movpos.o serial_talk.o Puma_OP.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

_OBJ2 = movjoints.o serial_talk.o Puma_OP.o
OBJ2 = $(patsubst %,$(ODIR)/%,$(_OBJ2))

$(ODIR)/%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

$(ODIR)/%.o: %.cpp
	$(CPP) -c -o $@ $< $(CFLAGS)

movpos: $(OBJ)
	$(CPP) -o $@.bin $^ $(CFLAGS) 

movjoints: $(OBJ2)
	$(CPP) -o $@.bin $^ $(CFLAGS)

.PHONY: clean

clean: 
	rm -rf $(ODIR)/*.o *~ core $(INCDIR)/*~ *.bin
