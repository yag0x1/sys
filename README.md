# My Arch Backup

## My way in archinstall

* boot with grub2
* swap false
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
sudo nano /etc/default/grub
```
* Change the next lines:
  
GRUB_DISABLE_SUBMENU=y        #Optional

GRUB_DEFAULT=saved

GRUB_SAVEDEFAULT=true
* Re-generate the GRUB configuration file:
```
sudo grub-mkconfig -o /boot/grub/grub.cfg
```


