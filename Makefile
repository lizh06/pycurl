CC=gcc
PYINCLUDE=/usr/local/include/python2.1
CURLINCLUDE=/usr/local/include/curl
INCLUDE=-I$(PYINCLUDE) -I$(CURLINCLUDE)
LIBS=-L/usr/local/lib -lcurl
LDOPTS=-shared
CCOPTS= -g -O2 -Wall -Wstrict-prototypes -fPIC

all:
	$(CC) $(INCLUDE) $(CCOPTS) -c curl.c -o curl.o
	$(CC) $(LIBS) $(LDOPTS) -lcurl curl.o -o curlmodule.so

clean:
	rm -f *~ *.o *.so