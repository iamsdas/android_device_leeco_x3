#!/bin/sh

echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic build/make/core frameworks/av frameworks/base hardware/interfaces system/core "

# red + nocolor
RED='\033[0;31m'
NC='\033[0m'


for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
        echo -e "\n${RED}Applying ${NC}$dir ${RED}patches...${NC}\n"
	#git am $rootdirectory/vendor/mediatek/patches/$dir/*.patch
	git apply -v $rootdirectory/device/LeEco/X3/patches/$dir/*.patch
done

# -----------------------------------
echo -e "Done !\n"
cd $rootdirectory

