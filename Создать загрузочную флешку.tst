Создать загрузочную флешку

1) sudo fdisk -l

у меня:
	Device     Boot Start      End  Sectors  Size Id Type
	/dev/sdc4  *      256 15814655 15814400  7,6G  b W95 FAT32

2) dd if=~/Downloads/ubuntu.iso of=/dev/sdb1

Здесь я подразумеваю? что ~/Downloads/ubuntu.iso - это установочный образ, а /dev/sdb1 - ваша флешка.

	у меня:
		sudo dd if=~/Downloads/Win10_1903_V2_Russian_x64.iso of=/dev/sdc4

все