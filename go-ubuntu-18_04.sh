#!/bin/bash

virt-install \
--name=bionic1.example.com \
--vcpus=1 \
--memory=1024 \
--nographics \
--os-type=linux \
--location=http://us.archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/ \
--disk path=/var/lib/libvirt/images/bionic1.example.com,size=10 \
--initrd-inject=./ks/ubuntu-18_04/ks.cfg \
--extra-args="ks=file:/ks.cfg  console=ttyS0,115200"

