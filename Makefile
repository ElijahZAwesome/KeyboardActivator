ifeq ($(shell [ -f ./framework/makefiles/common.mk ] && echo 1 || echo 0),0)
all clean package install::
	git submodule update --init
	$(MAKE) $(MAKEFLAGS) MAKELEVEL=0 $@
else

TWEAK_NAME = KeyboardListener
KeyboardListener_OBJC_FILES = KeyboardListener.m
KeyboardListener_FRAMEWORKS = Foundation UIKit
KeyboardListener_LDFLAGS = -lactivator -L./External/libactivator/.theos/obj

include framework/makefiles/common.mk
include framework/makefiles/tweak.mk

endif
