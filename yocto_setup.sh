#!/bin/bash

if [ $1 == "kirkstone" ]
then
	echo "Setting up Kirkstone version of Yocto"
	branch=kirkstone
elif [ $1 == "mickledore" ]
then
	echo "Setting up Mickledore version of Yocto"
	branch=mickledore
else
	echo "Mention the yocto version to setup environment"
	exit
fi

if [ ! -d "poky" ]
then
    echo "----------------------------------------------------------------------------------------------"
    echo "Cloning poky layer from $branch branch "
    echo "----------------------------------------------------------------------------------------------"
    git clone git://git.yoctoproject.org/poky -b $branch
else
    echo "poky layer exists...skipping clone"
fi

if [ ! -d "meta-intel" ]
then
    echo "----------------------------------------------------------------------------------------------"
    echo "Cloning meta-intel layer from $branch from"
    echo "----------------------------------------------------------------------------------------------"
    git clone git://git.yoctoproject.org/meta-intel.git -b $branch
else
    echo "meta-intel layer exists...skipping clone"
fi

echo "TEMPLATECONF=\${TEMPLATECONF:-../meta-mylayer/conf}" > poky/.templateconf

echo "-----------------------------------------------------------------------------------------------------"
echo "                              Yocto $branch set-up complete                                          "
echo "-----------------------------------------------------------------------------------------------------"

