#!/bin/bash
echo $PWD

#FFSW Firmware patches
# Ausfuehren aus dem gluon Dir !
echo "--------------------------------------------------"
echo Apply FFSW firmware patches
echo "--------------------------------------------------"


#respondd
echo "--------------------------------------------------"
echo respondd hopglass
git apply ../patches/respondd_hopglass.patch

#ecdsasign
#echo "--------------------------------------------------"
#echo ecdsasign
#echo "(wird uebersprungen, da nicht mehr benoetigt)"
#git apply ../patches/ecdsasign_replace.patch

echo "--------------------------------------------------"
echo Archer C25v1
git apply ../patches/archer_C25v1_not_broken.patch

#echo "--------------------------------------------------"
#echo Netgear WNR2200
#echo "(wird uebersprungen, da nicht mehr benoetigt)"
#git apply ../patches/netgear_wnr2200_not_broken.patch

echo "--------------------------------------------------"
echo Futro
cd openwrt
git apply ../../patches/futro_cf_card_support.patch
cd ..

#echo "--------------------------------------------------"
#echo MI Router 4a Gigabit Edition
#echo "(wird uebersprungen, da in gluon 2022 nicht mehr benoetigt)"
#pushd ../gluon ; ../patches/add-mi-router-4a-gigabit.sh; popd # adding Xiaomi -mi-router-4a-gigabit edition

echo "--------------------------------------------------"
echo finished
echo "--------------------------------------------------"

