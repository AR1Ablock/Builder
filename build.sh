#!/bin/bash
source of.env
rm /bin/python
ln -s /bin/python2 /bin/python
cd $ANDROID_ROOT
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
## For OFX_R
export FOX_USE_NANO_EDITOR=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES := 1
export OF_USE_NEW_MAGISKBOOT := 1
export OF_FORCE_DISABLE_DM_VERITY_FORCED_ENCRYPTION := 1
export OF_DISABLE_DM_VERITY_FORCED_ENCRYPTION := 1
export OF_SKIP_MULTIUSER_FOLDERS_BACKUP := 1
lunch omni_Nova-eng
#mkdir -p /home/runner/work/twrp/out/target/product/yggdrasil/system/etc
#touch /home/runner/work/twrp/out/target/product/yggdrasil/system/etc/ld.config.txt
make -j$(nproc) recoveryimage
