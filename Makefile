SOURCES = $(wildcard *.S)
OBJS = $(wildcard *.o)	
EXECS = $(SOURCES:%.S=%)
all: $(patsubst %.S, %.o, $(wildcard *.S)) $(EXECS)
%: %.S
	gcc -g -o $@ $<
clean:
	rm -f $(EXECS) $(OBJS)

	# as -o $@.o $@.S
	# ld -o $@ $@.o

