##Project Structure:
* ramdisk - Current changes
    *	**ADD** the empty folders "data", "dev", "proc", "sys", and "system", OR, run createfolders.sh
* boot.img - Last built image
* boot.img-kernel - The stock asop kernel
* boot.img-ramdisk.cipo.gz - The asop ramdisk

##Build Instructions:
*  Automatic:
    *   Run `./Pack.sh`
*  Manual:
    *  	Create empty folders "data", "dev", "proc", "sys", and "system" required for building
    *  	`cd` to the ramdisk folder
    *  	Run `find . | cpio -o -H newc | gzip > ../ram" in terminal`
    *  	Then `cd ..`
    *  	Then run `mkbootimg --kernel boot.img-kernel --ramdisk ram -o boot.img`  (I just added mkbootimg to ~/bin)

	`mkbootimg` is from android source code.
