#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10260480:90005b412d041726d40f6de5a9e0408d2ec41a21; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:9381888:e5e3720bfe4a63667fad3cecc6cba2b6c7b56adc EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 90005b412d041726d40f6de5a9e0408d2ec41a21 10260480 e5e3720bfe4a63667fad3cecc6cba2b6c7b56adc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
