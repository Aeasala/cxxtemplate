BUILD_SDL := true

ifeq ($(BUILD_SDL), true)
LIBADD += -lSDL2
endif
