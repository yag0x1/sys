# Arch Backup

## archinstall

* boot with grub2
* swap in ext2 of 32gb
* profile desktop gnome with nvidea drivers open kernel e gdm
* audio Pipewire
* kernels: linux e linux-lts
* network manager
* multilib

## To remove archlinux gdm logo

```
sudo -u gdm dbus-launch gsettings set org.gnome.login-screen logo /
```

## Preferencial kernel config
* In the boot grub2 select the kernel that you like.
* Edit the file grub:
```
sudo vim /etc/default/grub
```
* Change the next lines:
  
GRUB_DISABLE_SUBMENU=y        #Optional

GRUB_DEFAULT=saved

GRUB_SAVEDEFAULT=true
* Re-generate the GRUB configuration file:
```
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

## Install paru
```
sudo pacman -S --needed base-devel git
mkdir ~/git && cd ~/git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

## paru:
```
gnome-shell-extension-pop-shell-git
pop-theme                                   #configurate pop dark theme
google-chrome extension-manager dconf-editor 

```

## pacman:
```
sudo pacman -Rs epiphany gnome-weather gnome-tour gnome-maps  gnome-contacts gnome-music gnome-console gnome-clocks gnome-calendar # Removing default packages
sudo pacman -Syu zsh ranger tmux fzf neovim git

```

## Trash
create dir:
```
mkdir /trash
```
to remove files:
```
sudo mv filetoremove /trash
```

## VPN
```
sudo pacman -S strongswan networkmanager-strongswan
```

## Search in history:
```
sudo pacman -S fzf
source <(fzf --zsh)
```

## KVM
```
sudo pacman -S virt-manager virt-viewer qemu vde2 ebtables iptables-nft nftables dnsmasq bridge-utils ovmf swtpm
# Remove # at the following lines: unix_sock_group = "libvirt" and unix_sock_rw_perms = "0770"
sudo vim /etc/libvirt/libvirtd.conf

sudo usermod -a -G kvm,libvirt $(whoami)
sudo systemctl enable libvirtd
sudo systemctl start libvirtd

# user = "your username"
# group = "your username"
sudo vim /etc/libvirt/qemu.conf

sudo systemctl restart libvirtd
sudo virsh net-autostart default
```

## Extensions
* hide top bar
* Compact top bar
* Hide Activities Button
* Hide Top Bar
* Space Bar
* Clicboard History
* Hide the Dock in overview

