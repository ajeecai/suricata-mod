#!/bin/sh

#modprobe uio_pci_generic
#dpdk-devbind.py --bind=uio_pci_generic 0000:00:08.0
#dpdk-devbind.py --bind=uio_pci_generic 0000:00:09.0
modprobe vfio-pci
dpdk-devbind.py --bind=vfio-pci 0000:03:00.0
dpdk-devbind.py --bind=vfio-pci 0000:0b:00.0
dpdk-hugepages.py -p 2048k --setup 2G
