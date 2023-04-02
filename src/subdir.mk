##mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
#folder names
SUBMODULES_DIRS :=${shell find ${SRC}/* -type d -print}
SUBOBJECTS_DIRS :=$(subst $(SRC),$(OBJ),$(SUBMODULES_DIRS))

#get stuff by extension
SUBSOURCES_C:=$(shell find $(SRC)/*/ -name '*.c')
SUBSOURCES_CC:=$(shell find $(SRC)/*/ -name '*.cc')
SUBSOURCES_CPP:=$(shell find $(SRC)/*/ -name '*.cpp')
SUBSOURCES_CXX:=$(shell find $(SRC)/*/ -name '*.cxx')

#subobject extension setting, directory location
SUBOBJECTS_EXT :=\
	$(SUBSOURCES_C:.c=.o)\
	$(SUBSOURCES_CC:.cc=.o)\
	$(SUBSOURCES_CPP:.cpp=.o)\
	$(SUBSOURCES_CXX:.cxx=.o)
SUBOBJECTS := $(subst $(SRC),$(OBJ),$(SUBOBJECTS_EXT))

# make a nice tidy list of our subsources that we'll attach on our root makefile source list
SUBSOURCES = $(SUBSOURCES_C) \
	$(SUBSOURCES_CC) \
	$(SUBSOURCES_CPP) \
	$(SUBSOURCES_CXX) \

#make object directory structure
$(shell mkdir -p $(SUBOBJECTS_DIRS))