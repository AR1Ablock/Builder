#!/bin/bash
source of.env
rm /bin/python
ln -s /bin/python2 /bin/python
ln -s /sbin /home/runner/work/CustomRecovery/device/infinix/Nova/recovery/root/system_root/system/lib/vndk-28
ln -s /sbin /home/runner/work/CustomRecovery/device/infinix/Nova/recovery/root/system_root/system/lib/vndk-sp-28
ln -s /system_root/system/lib/vndk/vndk-28 /home/runner/work/CustomRecovery/device/infinix/Nova/recovery/root/sbin/vndk-28
ln -s /system_root/system/lib/vndk/vndk-sp-28 /home/runner/work/CustomRecovery/device/infinix/Nova/recovery/root/sbin/vndk-sp-28
cd $ANDROID_ROOT
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
## For OFX_R
#export FOX_USE_NANO_EDITOR=1
#export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
lunch omni_Nova-eng
make -j$(nproc) recoveryimage
