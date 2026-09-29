TARGET := iphone:clang:latest:15.0
ARCHS = arm64 arm64e
TARGET = iphone:clang:16.5:15.0
THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CCASSter

CCASSter_FILES = Tweak.xm
CCASSter_FRAMEWORKS = UIKit CoreFoundation CFNetwork QuartzCore CoreImage
CCAster_PRIVATE_FRAMEWORKS = ControlCenterServices SpringBoardUIServices
CCASSter_CFLAGS = -fobjc-arc

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += prefs

include $(THEOS_MAKE_PATH)/aggregate.mk
