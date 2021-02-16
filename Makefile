CC = riscv64-unknown-elf-g++
LDFLAGS = --static -lm

SRC = $(wildcard *.cpp)
OBJ = $(SRC:.cpp=.o)
EXECBIN = $(SRC:.cpp=.rv)

.PHONY: all clean

all : $(EXECBIN)

%.rv : %.cpp
	$(CC) $< -o $@ $(LDFLAGS)

clean :
	rm -rf *.rv

