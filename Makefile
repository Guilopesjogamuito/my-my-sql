CC = gcc
CFLAGS = -Wall -Wextra -std=c11

SRCS = main.c
OBJS = $(SRCS:.c=.o)
EXEC = main

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $@

clean:
	rm -rf $(OBJS) $(EXEC)

format:
	clang-format -style=Google -i *.c *.h