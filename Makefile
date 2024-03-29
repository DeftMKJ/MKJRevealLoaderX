TARGET := iphone:clang:latest
THEOS_PACKAGE_SCHEME = rootless
export ARCHS = arm64 arm64e


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RevealLoaderInject

$(TWEAK_NAME)_CFLAGS = -fobjc-arc -fobjc-weak
$(TWEAK_NAME)_FRAMEWORKS = Foundation
$(TWEAK_NAME)_FILES = init.xm

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/tool.mk
