mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
here := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

#TODO

#folder names
SUBMODULES += asdf meme mame
SUBMODULES_DIRS += $(patsubst %,$(here)/%/,$(SUBMODULES))
SUBMODULES_MAKES += $(patsubst %,%/subdir.mk,$(SUBMODULES_DIRS))

OBJ_SUB := $(subst $(SRC),$(OBJ),$(SUBMODULES_DIRS))

SUBSOURCES += $(wildcard $(here)/*.c $(here)/*.cc $(here)/*.cpp $(here)/*.cxx)
SUBOBJECTS := $(patsubst $(SRC)/%.c,$(OBJ)/%.o,$(SUBSOURCES))
	
$(info $(OBJ_SUB))
$(info $(SUBMODULES_DIRS))