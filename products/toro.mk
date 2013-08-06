# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Setup device specific product configuration.
PRODUCT_NAME := neel_toro

# Set locale to US English only
PRODUCT_LOCALES := en_US

# Where are we?
LOCAL_PATH := vendor/neel

# NFC
#include $(LOCAL_PATH)/products/nfc.mk

# Google Apps and other common items
include $(LOCAL_PATH)/products/common.mk

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Girtab.ogg \
    ro.config.notification_sound=Silent \
    drm.service.enabled=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1

#PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=yakju \
    #BUILD_ID=JOP40D \
    #BUILD_DISPLAY_ID=JOP40D \
    BUILD_FINGERPRINT=google/yakju/maguro:4.3/JWR66V/737497:user/release-keys \
    PRIVATE_BUILD_DESC="yakju-user 4.3 JWR66V 737497 release-keys" \
    BUILD_NUMBER=737497

