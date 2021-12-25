#!/bin/bash
source of.env
rm /bin/python
ln -s /bin/python2 /bin/python
cd $ANDROID_ROOT
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"

# OFX Configs

#FOX_USE_LZMA_COMPRESSION := 1
/*export FOX_USE_TAR_BINARY := 1
export FOX_USE_ZIP_BINARY := 1
export FOX_USE_XZ_UTILS := 1
export FOX_USE_NANO_EDITOR := 1*/
#FOX_REMOVE_BASH := 1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES := 1
export OF_USE_NEW_MAGISKBOOT := 1
export OF_FORCE_DISABLE_DM_VERITY_FORCED_ENCRYPTION := 1
export OF_DISABLE_DM_VERITY_FORCED_ENCRYPTION := 1
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER := 1
export OF_FLASHLIGHT_ENABLE := 0
export OF_MAINTAINER := A-Rehman
export OF_STATUS_INDENT_LEFT := 48
export OF_STATUS_INDENT_RIGHT := 48
#OF_SCREEN_H := 2280
export OF_STATUS_H := 80
#FOX_DRASTIC_SIZE_REDUCTION := 1
#FOX_EXTREME_SIZE_REDUCTION := 1
export OF_SKIP_MULTIUSER_FOLDERS_BACKUP := 1
#FOX_DELETE_MAGISK_ADDON := 1
#FOX_DELETE_INITD_ADDON := 1
export FOX_USE_NANO_EDITOR=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1

lunch omni_Nova-eng
#mkdir -p /home/runner/work/twrp/out/target/product/yggdrasil/system/etc
#touch /home/runner/work/twrp/out/target/product/yggdrasil/system/etc/ld.config.txt
make -j$(nproc) recoveryimage
