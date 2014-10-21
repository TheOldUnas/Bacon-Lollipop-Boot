##Boot.img

####Project Structure:
+ ramdisk - current changes

	ADD the empty folders"data", "dev", "proc", "sys", and "system", OR, run createfolders.sh
+ boot.img - first built image
+ boot.img-kernel - the stock asop kernel
+ boot.img-ramdisk.cipo.gz - the asop ramdisk
+ ou2 - 2nd built image
+ ram - first build ramdisk
+ ram2 - second built ramdisk


####Build Instructions:
+ run 
		`./createfolders.sh`
	to create empty folders required for building

+  Change the current directory to the "ramdisk" directory
		`cd ramdisk`

+  Run to create a gzip file called ram in the root directory of the project
  		`find . | cpio -o -H newc | gzip > ../ram`

+  Then go to that directory
  		`cd ..`

+  Then run


	`mkbootimg --kernel boot.img-kernel --ramdisk ram -o boot.img`


	`mkbootimg` is from android source code.
