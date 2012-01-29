LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	EGLUtils.cpp \
	EventHub.cpp \
	EventRecurrence.cpp \
	FramebufferNativeWindow.cpp \
	GraphicBuffer.cpp \
	GraphicBufferAllocator.cpp \
	GraphicBufferMapper.cpp \
	GraphicLog.cpp \
	KeyLayoutMap.cpp \
	KeyCharacterMap.cpp \
	Input.cpp \
	InputDispatcher.cpp \
	InputManager.cpp \
	InputReader.cpp \
	InputTransport.cpp \
	IOverlay.cpp \
	Overlay.cpp \
	PixelFormat.cpp \
	Rect.cpp \
	Region.cpp

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libutils \
	libEGL \
	libbinder \
	libpixelflinger \
	libhardware \
	libhardware_legacy

LOCAL_MODULE:= libui

ifeq ($(TARGET_SIMULATOR),true)
    LOCAL_LDLIBS += -lpthread
endif

ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),latte)
	LOCAL_CFLAGS += -DLATTE_KEYPAD
else ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),chacha)
	LOCAL_CFLAGS += -DVISION_KEYPAD
else ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),vision)
	LOCAL_CFLAGS += -DVISION_KEYPAD
else ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),speedy)
	LOCAL_CFLAGS += -DVISION_KEYPAD
else ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),GT-P1000)
	LOCAL_CFLAGS += -DGTP1000_TS
endif

ifeq ($(BOARD_HAVE_CUSTOM_PANEL_SIRIUS),true)
LOCAL_CFLAGS += -DCUSTOM_PANEL_SIRIUS
endif

ifneq ($(TARGET_TOUCHPAD_INPUT_DEVICE_ID),)
	LOCAL_CFLAGS += -DTOUCHPAD_INPUT_DEVICE_ID=$(TARGET_TOUCHPAD_INPUT_DEVICE_ID)
endif

ifeq ($(BOARD_NO_RGBX_8888),true)
	LOCAL_CFLAGS += -DNO_RGBX_8888
endif

include $(BUILD_SHARED_LIBRARY)
