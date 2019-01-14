#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32441678:788083b329ca6f2f896b844bcdb3995b921cb371; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26781002:90bfb9d6cb0ea04f986bfb64e9e80b88b78203b5 EMMC:/dev/block/bootdevice/by-name/recovery 788083b329ca6f2f896b844bcdb3995b921cb371 32441678 90bfb9d6cb0ea04f986bfb64e9e80b88b78203b5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
