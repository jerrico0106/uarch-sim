CC = gcc
CFLAGS = -Wall -Wextra -02 -g -std=c11 -Iinclude
all : uarch_sim
uarch_sim: src/main.c src/cache.c include/cache.h include/common.h
	$(CC) $(CFLAGS) src/main.c src/cache.c -o uarch_sim -lm

clean:
	rm -f uarch_sim

