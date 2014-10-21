Boot.img

Project Structure:
+ ramdisk - current changes

	ADD the empty folders"data", "dev", "proc", "sys", and "system", OR, run createfolders.sh
+ boot.img - first built image
+ boot.img-kernel - the stock asop kernel
+ boot.img-ramdisk.cipo.gz - the asop ramdisk
+ ou2 - 2nd built image
+ ram - first build ramdisk
+ ram2 - second built ramdisk


Build Instructions:
+  cd to the ramdisk folder
+  run "find . | cpio -o -H newc | gzip > ../ramdisk" in terminal"
+  then cd ..
+  then run "mkbootimg --kernel boot.img-kernel --ramdisk ram -o boot.img"  (I just added mkbootimg to ~/bin)

