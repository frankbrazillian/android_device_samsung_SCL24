#!/system/bin/sh

MIXER_PATHS=/tmp/install/bin/mixer_paths.xml

if [ "$VARIANT" = "xx" ] ; then
    cp -f "$MIXER_PATHS" "/system/vendor/etc/mixer_paths.xml"
fi

