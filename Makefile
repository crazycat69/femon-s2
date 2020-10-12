CC=gcc

SRC=femon-t2.c
OBJ=femon-s2.o

BIND=/usr/local/bin/
INCLUDE=-I../s2/linux/include

TARGET=femon-s2

all: $(TARGET) $(TARGET)

$(TARGET1): $(OBJ1)
	$(CC) $(CFLG) $(OBJ) -o $(TARGET) $(CLIB) 

install: all
	cp $(TARGET) $(BIND)

uninstall:
	rm $(BIND)$(TARGET)

clean:
	rm -f $(OBJ1) $(TARGET) *~

%.o: %.c
	$(CC) $(INCLUDE) -c $< -o $@
