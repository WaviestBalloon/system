#!/bin/bash
set -e

sudo systemctl enable --now libvirtd.service
sudo virsh net-autostart default
sudo virsh net-start default
