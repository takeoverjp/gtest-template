#GTEST_ROOT:=../gtest
GTEST_ROOT:=hoge
GTEST_LIBDIR=$(GTEST_ROOT)/lib/
GTEST_INCDIR=$(GTEST_ROOT)/include/
GTEST_LIBS=-lgtest -lgtest_main -lpthread

.cpp.o:
	g++ -c -o $@ -I$(GTEST_INCDIR) $<
test_foo: test_foo.o foo.o
	g++ -o $@ -L$(GTEST_LIBDIR) $^ $(GTEST_LIBS)

clean:
	rm -f *.o *~ test_foo
