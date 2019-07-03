#!/bin/bash

set -o errexit

MY_PROMPT='$ '
MY_YESNO_PROMPT='(y/n)$ '

# version of the software
MAJOR_VERSION=2
MINOR_VERSION=12
# 0 Alpha, 1 Beta, 2 RC, 3 Public release
RELEASE_TYPE=3
RELEASE_BUILD=2
INFORMATIONAL_VERSION=2.12.3.201801090091
RELEASE_TYPE_TEXT=Release


echo "Installing FlyCapture2 packages...";

dpkg -i libptgreyvideoencoder-2*
dpkg -i libflycapture-2*
dpkg -i libflycapturegui-2*
dpkg -i libflycapture-c-2*
dpkg -i libflycapturegui-c-2*
dpkg -i libmultisync-2*
dpkg -i libmultisync-c-2*
dpkg -i flycap-2*
dpkg -i flycapture-doc-2*
dpkg -i updatorgui*


echo "Launching conf script";
 sh flycap2-conf

echo "Flycap is Complete";


exit 0
