CC = gcc
CFLAGS = -g -std=gnu99

default: $(TARGET)

%: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	@$(RM) problem.txt errors.txt select_lotr.txt hobbit_weapons.txt 2> /dev/null
