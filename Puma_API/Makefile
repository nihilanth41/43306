IDIR=.
CC=gcc
CPP=g++
CLFAGS=-I$(IDIR)
ODIR=obj

_DEPS = serial_talk.h Puma_OP.h
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = test.o serial_talk.o Puma_OP.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

$(ODIR)/%.o: %.cpp
	$(CPP) -c -o $@ $< $(CFLAGS)

test: $(OBJ)
	$(CPP) -o $@.bin $^ $(CFLAGS) 

.PHONY: clean

clean: 
	rm -rf $(ODIR)/*.o *~ core $(INCDIR)/*~
