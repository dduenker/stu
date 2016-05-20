#
# This is the makefile of Stu.  No, Stu does *not* have a Stu file.
# Also, there is no configure mechanism, only this Makefile. 
#
# We follow the GNU Coding Standards for the naming of Make targets. 
#
# The arguments to the compiler are meant for GCC; they have to be
# changed by hand to use another compiler. 
# 

all: stu.1 stu

.PHONY:  all clean 

clean:  
	rm -f stu

CXX=c++

CXXFLAGS_NDEBUG= -O2 -DNDEBUG -s

CXXFLAGS_OTHER=             \
    -std=c++11              \
    -D_FILE_OFFSET_BITS=64  

CXXFLAGS_ALL_NDEBUG= $(CXXFLAGS_NDEBUG) $(CXXFLAGS_OTHER)

stu:  *.cc *.hh version.hh
	$(CXX) $(CXXFLAGS_ALL_NDEBUG) stu.cc -o stu
