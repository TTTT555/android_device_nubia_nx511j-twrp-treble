## TWRP Treble device tree for Nubia Z9 mini with broken EMMC

#Used with broken devices. http://4pda.ru/forum/index.php?s=&showtopic=702119&view=findpost&p=89567611

1) Create {source-dir} and initialize Omni sources (we need make_ext4fs from Oreo tree): 

```
repo init -u git://github.com/omnirom/android.git -b android-8.1
repo sync
```

2) Replace {source-dir}/bootable/recovery/ on this tree: https://github.com/omnirom/android_bootable_recovery/tree/android-9.0

3) Place this device tree files to {source-dir}/device/nubia/nx511j


To build:

```
cd {source-dir}
. build/envsetup.sh
lunch omni_nx511j-eng
mka recoveryimage
```
