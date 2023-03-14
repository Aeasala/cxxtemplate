BUILD_SDL := false

ifeq ($(BUILD_SDL), true)
LIBADD += -lSDL2
endif
