unattended-linux-kickstart
=========================

# LICENSE
```
Copyright 2018 Yamir Encarnacion <yencarnacion@webninjapr.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

# Description: Scripts for Unattended Linux Virtual Machine Creation using kickstart

## Notes:

1. Step 1
```sh
$ sudo ./go-ubuntu-18_04.sh
```
- creates ubuntu 18.04 (bionic) virtual machine with:
```
username: yamir
password: root4me
```
## For All the commands below `sudo` may be required

## Commands to find the ip address of the vm
```sh
$ virsh net-list
$ virsh net-dhcp-leases <net-name>
$ virsh net-dhcp-leases default

# to figure out vm ip
$ sudo virsh domiflist ubuntu1.example.com
$ arp -e 
$ arp -an
```

## Commands to Delete VM when done
```sh
virsh list --all
virsh destroy ubuntu1.example.com
virsh undefine ubuntu1.example.com
virsh vol-delete --pool images ubuntu1.example.com
```

## Command to shutdown VM
```sh
virsh shutdown ubuntu1.example.com
```

## Command to start VM
```sh
virsh start ubuntu1.example.com
```

## Other notes
If a different hostname is desired, remember to change the
hostname in the ks.cfg file and the .sh file.  Also, remember 
to change the disk name.

## Notes for the future
Remember for centos
```
--location=http://mirror.easyname.at/centos/7/os/x86_64/ 
```

