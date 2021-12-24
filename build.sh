#!/bin/bash
source of.env
rm /bin/python
ln -s /bin/python2 /bin/python
cd $ANDROID_ROOT
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"

#For non MIUI Devices
export FOX_USE_NANO_EDITOR=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1

lunch omni_Nova-eng
#mkdir -p /home/runner/work/twrp/out/target/product/yggdrasil/system/etc
#touch /home/runner/work/twrp/out/target/product/yggdrasil/system/etc/ld.config.txt
make -j$(nproc) recoveryimage
