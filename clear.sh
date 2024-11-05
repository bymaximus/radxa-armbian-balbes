#!/bin/bash

umount -f -r -l /.RADXA/.tmp/rootfs-*
umount -f -r -l /samba/CACHE/temp/rootfs-*

rm -rf /.RADXA/.tmp/*
rm -rf /.RADXA/.cache/*

rm -rf /samba/CACHE/temp/*
rm -rf /samba/CACHE/temp/.extensions*
rm -rf /samba/CACHE/cache/*
rm -rf /samba/CACHE/cache/.aria2*
rm -rf /samba/CACHE/cache/.gpg*

echo "DONE"
