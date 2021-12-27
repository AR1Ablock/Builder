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
lunch omni_Nova-eng
make -j$(nproc) recoveryimage
