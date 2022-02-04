CC=/usr/bin/gcc
CFLAGS=-I.
DEPS=hello.h
OBJ=hello.o


%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)
hello: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
