csrc     := $(wildcard *.c)
cppsrc   := $(wildcard *.cpp)
objs     := $(notdir $(cppsrc:.cpp=.o)) $(notdir $(csrc:.c=.o))

all: $(objs)

%.o :: %.c   #pch
	#$(CC) $(CFLAGS)   -include-pch renderer_common.h.pch -c -o $(TEMP_DIR)$@ $<

#$(CC) $(CXXFLAGS) -include-pch renderer_common.h.pch -c -o $(TEMP_DIR)$@ $<
%.o :: %.cpp #pch
	$(CC) $(CXXFLAGS) -c -o $(TEMP_DIR)$@ $<

pch: renderer_common_e
	clang++ -cc1 renderer_common_e.h -emit-pch -o renderer_common.h.pch

renderer_common_e:
	clang++ -E renderer_common.h -o renderer_common_e.h