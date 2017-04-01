export THEOS =/var/theos
export ARCHS =  armv7 arm64
export ADDITIONAL_LDFLAGS = -Wl,-segalign,4000
SDKVERSION = 9.3
DEBUG=0
SYSROOT = $(THEOS)/sdks/iPhoneOS9.3.sdk
SHARED_CFLAGS = -fobjc-arc
export TARGET = iphone:clang:latest:latest

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AnghamiPlus
AnghamiPlus_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
