#!/bin/bash
source of.env
rm /bin/python
ln -s /bin/python2 /bin/python
cd $ANDROID_ROOT
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
export LD_LIBRARY_PATH /vendor/lib:/vendor/lib/hw:/system/lib:/system/lib/hw:/vendor/lib/mediacas:/vendor/lib/mediadrm:/system/lib/vndk-28:system/lib/vndk-sp-28
lunch omni_Nova-eng
#mkdir -p /home/runner/work/twrp/out/target/product/yggdrasil/system/etc
#touch /home/runner/work/twrp/out/target/product/yggdrasil/system/etc/ld.config.txt
make -j$(nproc) recoveryimage
