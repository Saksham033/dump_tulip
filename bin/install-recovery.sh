#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32441678:9427da49957f80666adc2af1ae7c7b015ac786f7; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26781002:bc306d3293c79e259135465985317aaf313b96cd EMMC:/dev/block/bootdevice/by-name/recovery 9427da49957f80666adc2af1ae7c7b015ac786f7 32441678 bc306d3293c79e259135465985317aaf313b96cd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
