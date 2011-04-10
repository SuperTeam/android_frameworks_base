#
# Audio Package 5 - Crespo/Soju
# 
# Include this file in a product makefile to include these audio files
#
# 

LOCAL_PATH:= frameworks/base/data/sounds

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/Alarm_Buzzer.ogg:system/media/audio/alarms/Alarm_Buzzer.ogg \
	$(LOCAL_PATH)/Alarm_Beep_01.ogg:system/media/audio/alarms/Alarm_Beep_01.ogg \
	$(LOCAL_PATH)/Alarm_Beep_02.ogg:system/media/audio/alarms/Alarm_Beep_02.ogg \
	$(LOCAL_PATH)/Alarm_Classic.ogg:system/media/audio/alarms/Alarm_Classic.ogg \
	$(LOCAL_PATH)/Alarm_Beep_03.ogg:system/media/audio/alarms/Alarm_Beep_03.ogg \
	$(LOCAL_PATH)/effects/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
	$(LOCAL_PATH)/effects/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
	$(LOCAL_PATH)/effects/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
	$(LOCAL_PATH)/effects/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
	$(LOCAL_PATH)/effects/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
	$(LOCAL_PATH)/effects/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
	$(LOCAL_PATH)/effects/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
	$(LOCAL_PATH)/effects/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
	$(LOCAL_PATH)/effects/Dock.ogg:system/media/audio/ui/Dock.ogg \
	$(LOCAL_PATH)/effects/Undock.ogg:system/media/audio/ui/Undock.ogg \
	$(LOCAL_PATH)/effects/Lock.ogg:system/media/audio/ui/Lock.ogg \
	$(LOCAL_PATH)/effects/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
	$(LOCAL_PATH)/notifications/Aldebaran.ogg:system/media/audio/notifications/Aldebaran.ogg \
	$(LOCAL_PATH)/notifications/Antares.ogg:system/media/audio/notifications/Antares.ogg \
	$(LOCAL_PATH)/notifications/regulus.ogg:system/media/audio/notifications/regulus.ogg \
	$(LOCAL_PATH)/ringtones/Pyxis.ogg:system/media/audio/ringtones/Pyxis.ogg \
	$(LOCAL_PATH)/ringtones/Rigel.ogg:system/media/audio/ringtones/Rigel.ogg \
	$(LOCAL_PATH)/ringtones/Solarium.ogg:system/media/audio/ringtones/Solarium.ogg \
	$(LOCAL_PATH)/ringtones/Testudo.ogg:system/media/audio/ringtones/Testudo.ogg \
	$(LOCAL_PATH)/ringtones/URSAMINOR.ogg:system/media/audio/ringtones/URSAMINOR.ogg \
	$(LOCAL_PATH)/ringtones/Vespa.ogg:system/media/audio/ringtones/Vespa.ogg
