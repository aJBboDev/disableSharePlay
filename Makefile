DEBUG = 0
FINALPACKAGE = 1

ARCHS = arm64 arm64e

ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
TARGET = iphone:16.2:15.0
else
TARGET = iphone:14.5:12.0
endif


INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = disableSharePlay

disableSharePlay_FILES = Tweak.xm
disableSharePlay_CFLAGS = -fobjc-arc
# disableSharePlay_FRAMEWORKS = IOKit MapKit

include $(THEOS_MAKE_PATH)/tweak.mk
