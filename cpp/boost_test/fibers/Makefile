CXX=g++
CXXFLAGS= -Ofast -I/home/wolf/Downloads/boost_1_72_0
CXXFLAGS+=-L/home/wolf/Downloads/boost_1_72_0/stage/lib/
CXXFLAGS+=-lboost_fiber -lboost_context
OBJS=main.o

all: mk_dirs $(OBJS)
	$(CXX) $(CXXFLAGS) ./obj/* -o ./bin/main

%.o : %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o ./obj/$@

mk_dirs:
	[ -d ./bin/ ] || mkdir ./bin/  ; sleep 0
	[ -d ./obj/ ] || mkdir ./obj/  ; sleep 0

clean:
	[ -d ./bin/ ] && rm -rf ./bin/ ; sleep 0
	[ -d ./obj/ ] && rm -rf ./obj/ ; sleep 0