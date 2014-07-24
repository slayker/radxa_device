#!/system/bin/sh

MARK=/data/local/FACTORY_RESET
PKGS=/system/vendor/preloadapps

echo "========begin install the third app if restart first=========="
if [ ! -e $MARK ]; then
echo "booting the first time, so pre-install some APKs."
busybox find $PKGS -name "*\.apk" -exec sh /system/bin/pm install {} \;
touch $MARK
echo "OK, installation complete."
fi
