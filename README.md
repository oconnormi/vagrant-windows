# Vagrant Windows Development Environment [![Stories in Ready](https://badge.waffle.io/oconnormi/vagrant-windows.png?label=ready&title=Ready)](http://waffle.io/oconnormi/vagrant-windows)

This Vagrantfile creates a windows vm for use in java Development

## Usage
Provision the system

`vagrant up`

RDP into the system

`vagrant rdp`

* Note: this requires rdp to be installed.

# Installed Software

* chocolatey package manager
* oracle jdk 8
* maven
* git
* posh-git
* intellij community edition
* 7zip

## Specs
```
memory = 4Gb
cpu = 2

User = vagrant
Password = vagrant

Shared Folders

# maven settings will be copied to the $HOME\.m2
~/.m2 -> C:\shares\.m2
# ssh keys will be copied to $HOME\.ssh
~/.ssh -> C:\shares\.ssh
```
