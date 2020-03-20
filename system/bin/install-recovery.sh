#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32625998:c468cffbeadd992043f70cbc7a8a780acafb453b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26465610:2b0d55349f792230f6e63544f1dfb5206d8896cf EMMC:/dev/block/bootdevice/by-name/recovery c468cffbeadd992043f70cbc7a8a780acafb453b 32625998 2b0d55349f792230f6e63544f1dfb5206d8896cf:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
