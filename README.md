# Freifunk Suedwest Firmware Patches 

Branch v2021.x was forked from https://github.com/eulenfunk/firmware/tree/v2021.x
and split into this repo by `git subtree split --prefix=patches`
for Mi Router 4AG support


## Patches
- Archer C25v1 as not broken
- Netgear WNR2220 as not broken
- Futro CF card support
- ecdsasign replace
- Respondd hopglass fix
- Xiaomi Mi Router 4a Gigabit Edition support 


## Instructions:
- clone this repo next to the gluon repo 
- after cloning site-repo and `make update`
- from the gluon directory execute `../patches/apply_all_patches.sh`
