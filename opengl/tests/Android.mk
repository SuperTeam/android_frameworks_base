ifneq ($(FRAMEWORK_SKIP_TESTS), true)
include $(call all-subdir-makefiles)
endif