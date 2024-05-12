#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Dolby
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sysconfig/preinstalled-packages-platform-xiaomi-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/preinstalled-packages-platform-xiaomi-product.xml \
    prebuilts/vndk/v33/arm/arch-arm-armv7-a-neon/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_foundation-v33.so \
    prebuilts/vndk/v33/arm64/arch-arm64-armv8-a/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_foundation-v33.so

# Rootdir
PRODUCT_PACKAGES := \
   init.target.rc

# Properties
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.audio_fx.current=dolby \
    ro.vendor.audio.dolby.dax.support=true \
    ro.vendor.dolby.dax.version=DAX3_3.6.0.12_r1 \

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/dolby/sepolicy/vendor \
    vendor/dolby/sepolicy/public


AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# VINTF
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/vintf/manifest_dolby.xml

$(call inherit-product, vendor/dolby/dolby-vendor.mk)
