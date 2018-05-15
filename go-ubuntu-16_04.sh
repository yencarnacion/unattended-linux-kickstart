#!/bin/bash

virt-install \
--name=xenial1.example.com \
--vcpus=1 \
--memory=1024 \
--nographics \
--os-type=linux \
--location=http://us.archive.ubuntu.com/ubuntu/dists/xenial/main/installer-amd64/ \
--disk path=/var/lib/libvirt/images/ubuntu1.example.com,size=10 \
--initrd-inject=./ks/ubuntu-16_04/ks.cfg \
--extra-args="ks=file:/ks.cfg  console=ttyS0,115200"

