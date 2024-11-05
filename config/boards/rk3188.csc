# Rockchip rk3188
BOARD_NAME="RK3188"
BOARDFAMILY="rk3188"
BOOTCONFIG="rbox-rk3188_defconfig"
KERNEL_TARGET="legacy,current"
FULL_DESKTOP="yes"
BOOT_LOGO="desktop"
#BOOT_FDT_FILE="rk3188-ugoos-ut2.dtb"
BOOT_FDT_FILE="rk3188-radxarock.dtb"
SRC_EXTLINUX="yes"
SRC_CMDLINE="console=uart8250,mmio32,0x20064000 console=ttyS2,115200 verbosity=7 earlyprintk coherent_pool=2M video=HDMI-A-1:e"
OFFSET=16


#H:\Dinheiro\Verus-Desktop\resources\app\assets\bin\win64\verusd\verusd.exe -ac_name=VRSC "-datadir=\"H:\Dinheiro\VRS\"" -fastload
