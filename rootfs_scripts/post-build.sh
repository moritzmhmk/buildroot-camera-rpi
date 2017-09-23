# create an empty /boot directory in target
install -d -m 0755 ${TARGET_DIR}/boot

# setup mount for /boot
install -T -m 0644 system/skeleton/etc/fstab ${TARGET_DIR}/etc/fstab
echo '/dev/mmcblk0p1 /boot vfat defaults 0 0' >> ${TARGET_DIR}/etc/fstab

