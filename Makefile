TESTS = fifo lcrq ccqueue msqueue faa

CFLAGS = -g -O3 -DBENCHMARK -pthread
LDLIBS = -lpthread -lm

all: $(TESTS)

$(TESTS): verify.o cpumap.o main.o harness.o

ccqueue: ccsynch.o

clean:
	rm -f $(TESTS) *.o

