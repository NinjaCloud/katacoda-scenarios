#!/usr/bin/env bash
mkdir ~/CKAD
sudo yum -y update
sudo yum -y install epel-release
sudo yum -y install libvirt qemu-kvm virt-install virt-top libguestfs-tools bridge-utils
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
systemctl status libvirtd
sudo usermod -a -G libvirt $(whoami)
sudo vi /etc/libvirt/libvirtd.conf
sudo systemctl restart libvirtd.service
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube
cd
clear
