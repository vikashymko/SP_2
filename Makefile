CC = g++
CFLAGS = -Wall -Wextra -I.

LIBRARY = libcalculator.a
TARGET = calculator.exe

SOURCES = calculator.h calculator.cpp main.cpp
OBJECTS = calculator.o main.o

all: $(LIBRARY) $(TARGET)

$(LIBRARY): calculator.o
	ar rcs $(LIBRARY) calculator.o

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS) -L. -lcalculator

calculator.o: calculator.cpp calculator.h
	$(CC) $(CFLAGS) -c calculator.cpp

main.o: main.cpp calculator.h
	$(CC) $(CFLAGS) -c main.cpp

clean:
	rm -f $(OBJECTS) $(LIBRARY) $(TARGET)