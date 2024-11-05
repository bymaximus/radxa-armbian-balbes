#!/bin/bash

#./compile.sh BOARD=rk3188 BRANCH=current RELEASE=buster BUILD_MINIMAL=no BUILD_DESKTOP=yes KERNEL_ONLY=no KERNEL_CONFIGURE=no DESKTOP_ENVIRONMENT=xfce DESKTOP_ENVIRONMENT_CONFIG_NAME=config_base DESKTOP_APPGROUPS_SELECTED="browsers chat desktop_tools editors email internet multimedia office programming remote_desktop" COMPRESS_OUTPUTIMAGE=sha,gpg,xz
#./compile.sh BOARD=rk3188 BRANCH=current RELEASE=buster BUILD_MINIMAL=no BUILD_DESKTOP=no KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,xz
#./compile.sh BOARD=rk3188 BRANCH=current RELEASE=focal BUILD_MINIMAL=no BUILD_DESKTOP=yes KERNEL_ONLY=no KERNEL_CONFIGURE=no DESKTOP_ENVIRONMENT=xfce DESKTOP_ENVIRONMENT_CONFIG_NAME=config_base DESKTOP_APPGROUPS_SELECTED="3dsupport browsers chat desktop_tools editors email internet multimedia office programming remote_desktop" COMPRESS_OUTPUTIMAGE=sha,gpg,xz
#./compile.sh BOARD=rk3188 BRANCH=current RELEASE=focal BUILD_MINIMAL=no BUILD_DESKTOP=no KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,xz
#./compile.sh BOARD=rk3188 BRANCH=current RELEASE=hirsute BUILD_MINIMAL=no BUILD_DESKTOP=no KERNEL_ONLY=no KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,xz

#./compile.sh EXIT_PATCHING_ERROR=yes NO_HOST_RELEASE_CHECK=yes BOARD=rk3188 BRANCH=current RELEASE=jammy BUILD_MINIMAL=no BUILD_DESKTOP=no KERNEL_ONLY=no
#KERNEL_CONFIGURE=no COMPRESS_OUTPUTIMAGE=sha,gpg,xz CLEAN_LEVEL="debs,alldebs,images,cache,sources,oldcache,extras" USE_TORRENT=no FORCE_CHECK_MD5_PACKAGES=no DOWNLOAD_MIRROR=china
#INSTALL_HEADERS=yes EXTERNAL=yes


#CCACHE_BASEDIR=/radxa/ARMBIAN/rk3188Ori/cache/sources/linux-mainline/v5.10.96 env PATH="/radxa/ARMBIAN/rk3188Ori/cache/toolchain/gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf/bin:/usr/lib/ccache:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/root/.dotnet/tools" make ARCH=arm CROSS_COMPILE="ccache arm-linux-gnueabihf-" olddefconfig
#CCACHE_BASEDIR=/radxa/ARMBIAN/rk3188Ori/cache/sources/linux-mainline/v5.10.96 env PATH="/radxa/ARMBIAN/rk3188Ori/cache/toolchain/gcc-arm-8.3-2019.03-x86_64-arm-linux-gnueabihf/bin:/usr/lib/ccache:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:${PATH}" make -j15 ARCH=arm CROSS_COMPILE="ccache arm-linux-gnueabihf-" LOCALVERSION="-rk3188" Image -modules dtbs


#./compile.sh BOARD=rk3188 COMPRESS_OUTPUTIMAGE=sha,gpg,xz DOWNLOAD_MIRROR=china EXTRAWIFI=no FORCE_CHECK_MD5_PACKAGES=no USE_TORRENT=no EXIT_PATCHING_ERROR=yes BRANCH=current RELEASE=jammy BUILD_MINIMAL=no BUILD_DESKTOP=no BUILD_ONLY=default KERNEL_CONFIGURE=no DISABLE_IPV6=true CLEAN_LEVEL="make-kernel"
#./compile.sh BOARD=rk3188 COMPRESS_OUTPUTIMAGE=sha,gpg,xz DOWNLOAD_MIRROR=china EXTRAWIFI=no FORCE_CHECK_MD5_PACKAGES=no USE_TORRENT=no EXIT_PATCHING_ERROR=yes BRANCH=current RELEASE=jammy BUILD_MINIMAL=no BUILD_DESKTOP=no BUILD_ONLY=default KERNEL_CONFIGURE=no DISABLE_IPV6=true CLEAN_LEVEL="make,make-kernel,make-uboot,debs,alldebs,images,cache,oldcache"

if [[ "${1}" == "make-kernel" ]]; then
	./compile.sh BOARD=rk3188 COMPRESS_OUTPUTIMAGE=sha,gpg,xz DOWNLOAD_MIRROR=china EXTRAWIFI=no FORCE_CHECK_MD5_PACKAGES=no USE_TORRENT=no EXIT_PATCHING_ERROR=yes BRANCH=current RELEASE=jammy BUILD_MINIMAL=no BUILD_DESKTOP=no BUILD_ONLY=default KERNEL_CONFIGURE=no DISABLE_IPV6=true CLEAN_LEVEL="make-kernel"
else
	if [[ "${1}" == "all" ]]; then
		./compile.sh BOARD=rk3188 COMPRESS_OUTPUTIMAGE=sha,gpg,xz DOWNLOAD_MIRROR=china EXTRAWIFI=no FORCE_CHECK_MD5_PACKAGES=no USE_TORRENT=no EXIT_PATCHING_ERROR=yes BRANCH=current RELEASE=jammy BUILD_MINIMAL=no BUILD_DESKTOP=no BUILD_ONLY=default KERNEL_CONFIGURE=no DISABLE_IPV6=true CLEAN_LEVEL="make,make-kernel,make-uboot,debs,alldebs,images,cache,oldcache"
	else
		./compile.sh BOARD=rk3188 COMPRESS_OUTPUTIMAGE=sha,gpg,xz DOWNLOAD_MIRROR=china EXTRAWIFI=no FORCE_CHECK_MD5_PACKAGES=no USE_TORRENT=no EXIT_PATCHING_ERROR=yes BRANCH=current RELEASE=jammy BUILD_MINIMAL=no BUILD_DESKTOP=no BUILD_ONLY=default KERNEL_CONFIGURE=no DISABLE_IPV6=true
	fi
fi

umount -f -r -l /.RADXA/.tmp/rootfs-*
#rm -rf /.RADXA/.tmp/rootfs-*.raw
