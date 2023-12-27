# My Linux first Steps

## Install the packages
### basics packages
```
sudo pacman -Syu alacritty ranger tmux fzf vim fish git fd bat fisher trash-cli gnome-packagekit unzip unrar
```

### Installing yay
```
cd ~ | mkdir git | cd git
git clone https://aur.archlinux.org/yay.git | cd yay | makepkg -si
```

### Advanced packages
```
yay -S extension-manager    # to install gnome extensions
yay -S gnome-shell-extension-pop-shell-git
yay -S pop-theme #configurate pop dark theme
yay -S dconf-editor
yay -S gnome-packagekit-git   #to unistall gnome packages
yay -S gnome-package          
```

### Plugins
```
fisher install PatrickF1/fzf.fish   # plugin for fish
mkdir -p ~/.local/share/fonts & cd ~/.local/share/fonts & curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraMono.tar.xz && tar -xf FiraMono.tar.xz    # Installing nerd fonts

```

## Configurations
```
sudo pacman -Rs epiphany gnome-weather gnome-tour gnome-maps  gnome-contacts gnome-music gnome-console gnome-clocks gnome-calendar # Removing default packages
cp -r ~/git/mylinux/.config/ ~/ # Copy the folders in https://github.com/yag0x1/mylinux/tree/main/.config in the local .config file
cp -r ~/git/mylinux/fish_history ~/.local/share/fish  #copy the history of fish
chsh -s /usr/bin/fish           # fish as default
ranger --copy-config=all        # ranger configuration to .config 
```

### Others
```
sudo pacman -S gnome-shell-extensions             #For gnome extensions
git clone https://aur.archlinux.org/gnome-browser-connector.git
cd gnome-browser-connector
makepkg -si

sudo pacman -S libgda6 #For the pano extension

sudo pacman -S wmctrl
```

### Initial configuration of github:
```
git config --global user.name "yag0x1"
git config --global user.email "yagx01@gmail.com"
cd ~/.ssh
ssh-keygen -o -t rsa -C "yagx01@gmail.com"
cat id_rsa.pub
```
Put the key in: https://github.com/settings/keys

### Creating new repository from terminal:
```
git init
git remote add origin https://github.com/yag0x1/repositoryname.git
git add .
git commit -m "first commit"
git push origin main
git branch --set-upstream-to=origin/main main
```

### To run shell script:
```
chmod u+x mylinuxconfs.sh
./initial_config.sh 
```

## Extensions (Gnome Shell extensions manager)
- top hat
- compact top bar
- pano clipboard
- simple worksapces
- app hider
- user themes #with pop theme
- worksapce indicator 


### To install virtual machine
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


## Tutorials

### RANGER: https://www.youtube.com/watch?v=FjQpzwp8J8E&t=467sl

```
G - linha final
g g - linha inicial

J e K - 11 linhas antes e depois

r - como abrir arquivo
y y - copiar
p p - colar
d d - cortar
:delete - apagar

:mkdir - criar pasta
:touch - criar arquivo

S - terminal ficando no caminho atual
exit - para sair do terminal e voltar ao ranger

:search nome-arquivo - para pequisar nome de arquivo

control n - nova aba
tab - trocar de aba
alt  numero - trocar a para aba numero
q - apagar aba

k - mostra todos os atalhos

```

### TMUX: https://www.youtube.com/watch?v=iCipX7Y3EcY&t=1046s
TMUX MOD: https://www.youtube.com/watch?v=DzNmUNvnB04&t=551s

tmux: https://tmuxcheatsheet.com/
```
​tm = control + b  - tecla me​​​stre

tm + c - criar nova janela
tm + numero da janela - ir para janela especifica
tm + n e p - movimenta entre janelas anterior e seguinte

tm + % - dividir vertical terminal
tm + " - modo horizontal terminal
tm + h e l - para movimentar entre terminais
tm + z - para focar em terminal que esteja dividido

tm + d - sair do tmux

tmux ls - visualizar sessões
tmux a -t nome - abrir sessão especifica

tm + $ - renomear a sessão
tm + w - navegar entre as janelas 
tm + s navegar entre sessões

tmux new -S nome - entrar em uma sessão nome
tmux kill-session -t nome - fechar sessão
tmux kil-server -apaga todas as sessões 


```

### VIM: https://www.youtube.com/watch?v=RZ4p-saaQkc&t=385s

```

spc t h - Change themes

TSinstall elixir - cores do texto das linguagens
TSinstallInfo - para saber linguagens instaladas

contrl n - navegador de arquivos
m - para marcar arquivo
a - novo arquivo
c - copiar 
p - pegar 
r - renomear  

spc f f - pesquisar arquivos do diretorio do projeto
spc f b - pesquisar arquivos abertos
 
spc c h - listas de comandos
spc e esperar - sugestões de comandos
 
contrl + hjkl - para navegar entre janelas do split nvim

 spc n - numeros das linhas 
spc r n - numeros relativos

shift tab e tab - para trocar entre abas do nvim
spc x - para fechar aba

spc h - terminal no horizontal
spc v - terminal no vertical
exit - fechar terminal

```

### Linux commands https://www.youtube.com/watch?v=JEhVB4VHsTI

### Comandos basicos (extraido do TLM - Hugo Cisneiros):
```
ls                                   : Lista os arquivos, mesmo que dir do DOS
Atributos comuns:
-a = mostra arquivos ocultos
-l = mostra bytes, permissoes, diretorio, etc
Obs: no ls os nomes de arquivos nos sistemas *X (Unix, linux, etc) nao precisam ter so 8 letras. Dai, se voce quer listar os arquivos comecados com u, por exemplo, peca ls u* e veja o resultado.
* substitui qualquer conjunto de caracteres
? substitui caracteres isolados

rm                                   : remove arquivos, no formato: rm (arquivo1) (arquivo2) (arquivo3) ...
Exemplo: rm eu.doc / rm leiame.txt manual.html win95.w95

cp                                   : copia arquivos, no formato: cp (arquivo1) (diretorio)
Exemplo: cp manual.txt /home/manual

cat                                  : mostra o conteudo do arquivo, mesmo que o 'type' no DOS

more                                 : exibe o conteudo de um arquivo pagina a pagina, mesmo q no DOS Exemplo: ls|more

pwd                                  : exibe o diretorio atual (o que vc esta)

touch                                : para criar arquivos

rmdir                                : apaga diretorio Exemplo: rmdir /diretorio se o diretorio estiver cheio, use o rm com o atributo -r

mkdir                                : cria diretorio Exemplo: mkdir /diretorio

clear                                : limpa a tela, mesmo que 'cls' no DOS

who                                  : mostra quem estah na maquina no momento

whoami                               : mostra quem voce eh - util quando vc esquece com q login entrou... ;)

finger                               : mostra o usuario associado a certa chave

df                                   : mostra o espaco usado, livre e a capacidade das particoes do HD

free                                 : exibe a memoria livre, a usada, e o buffers da memoria RAM

ex                                   : sai da sessao atual

tar                                  : (tape archive) programa de geracao de backup

tar -c                               :gera backup

tar -x                               :restaura backup

tar -v                               :lista cada arquivo processado

tar -t                               :lista o conteudo de um backup                                   

tar zxpvf (nome_do_arquivo)          : Para descompactar arquivos "tagged"(.tar.gz, .tgz, etc)
gunzip -d (nome_do_arquivo)          : Para descompactar arquivos  "gziped"(.gz):

chmod                                : muda as permissoes do arquivo/diretorio

chown                                : muda as permissoes do arquivo/diretorio

awk                                  : Procura por um modelo a partir de um arquivo. Inclui uma linguagem de programacao embutida.

bdiff                                : Compara dois arquivos grandes.

bfs                                  : Procura um arquivo grande.

cal                                  : Exibe um calendario.

cat                                  : Encadeia e imprimi arquivos.

cc                                   : Compilador C.

cd                                   : Muda diretorio.

cd ..                                : Diretório acima

chgrp                                : Muda o titulo de um grupo de arquivos.

cmp                                  : Compara dois arquivos; mostra a localizacao (linha e byte) da primeira diferenca entre eles.

comm                                 : Compara dois arquivos para determinar quais linhas sao comuns entre eles.

cu                                   : Chamar outro sistema UNIX.

date                                 : Retorna a data e a hora.

diff                                 : Exibe as diferencas entre dois arquivos ou diretorios.

diff3                                : Exibe as diferencas entre tres arquivos ou diretorios.

du                                   : Relatorio no uso do sistema de arquivos.

echo                                 : Exibe seus argumentos.

ed                                   : Editor de texto.

ex                                   : Editor de texto.

expr                                 : Avalia seus argumentos quando geralmente e uma formula matematica.

f77                                  : Compilador FORTRAN.

find                                 : Localiza os arquivos c/ caracteristicas especificas.

format                               : Inicializa um floppy disk.

grep                                 : Procura um modelo a partir de um arquivo. (veja awk)

help                                 : Ajuda da shell atual

kill                                 : Termina um processo.

ln                                   : Usado para unir arquivos.

lpr                                  : Copia um arquivo para a linha de impressora.

ls                                   : Exibe informacoes sobre um ou mais arquivos.

mail                                 : Usado para receber ou enviar e-mail.

nroff                                : Usado para formatar textos.

ps                                   : Exibe um status dos processos.

sleep                                : Causa um processo para tornar-se inativo por uma duracao de tempo especifica.

sort                                 : Escolher e unir um ou mais arquivos.

spell                                : Procurar erros de ortografia num arquivo.

split                                : Dividir um arquivo.

stty                                 : Exibir ou escolher parametros do terminal.

tail                                 : Exibir o fim de um arquivo.

tset                                 : Escolher o tipo de terminal.

umask                                : Permite que o usuario especifique uma nova criacao de camuflagem.

uniq                                 : Compara dois arquivos. Procura e exibe em linhas o que e incomparavel em um arquivo.

uucp                                 : Execucao UNIX-para-UNIX

vi                                   : Editor de tela cheia.

wc                                   : Exibe detalhes no tamanho do arquivo.

who                                  : Informacoes de quem esta on-line.

write                                : Usado para mandar mensagens para outro usuario. 

```

### Useful Linux Commands

#### Starting & Stopping:
```
shutdown -h now                      : Shutdown the system now and do not reboot
halt                                 : Stop all processes - same as above
shutdown -r 5                        : Shutdown the system in 5 minutes and reboot
shutdown -r now                      : Shutdown the system now and reboot
reboot                               : Stop all processes and then reboot - same as above
startx                               : Start the X system
```

#### Accessing & mounting file systems:
```
mount -t iso9660 /dev/cdrom          : Mount the device cdrom and 
/mnt/cdrom                           : call it cdrom under the /mnt directory

mount -t msdos /dev/hdd              : Mount hard disk “d” as a msdos file system and
/mnt/ddrive                          : call it ddrive under the /mnt directory

mount -t vfat /dev/hda1              : Mount hard disk “a” as a VFAT file system and
/mnt/cdrive                          : call it cdrive under the /mnt directory
 
umount /mnt/cdrom                    : Unmount the cdrom
```

#### Finding files and text within files:
```
find / -name fname                   : Starting with the root directory, look for the file called fname
find / -name ”*fname*”               : Starting with the root directory, look for the file containing the string fname

locate missingfilename               : Mount hard disk “d” as a msdos file system and
updatedb                             : call it ddrive under the /mnt directory

which missingfilename                : Mount hard disk “a” as a VFAT file system and
grep textstringtofind                : Starting with the directory called dir
 
/dir                                 : list all files containing textstringtofind

xvidtune                             : Run the X graphics tuning utility
XF86Setup                            : Run the X configuration menu with automatic probing of graphics cards
Xconfigurator                        : Run another X configuration menu with automatic probing of graphics cards
xf86config                           : Run a text based X configuration menu

ls -l                                : List files in current directory using long format
ls -F                                : List files in current directory and indicate the file type
ls -laC                              : List all files in current directory in long format and display in columns

/sbin/e2fsck hda5                    : Execute the filesystem check utility on partition hda5
fdformat /dev/fd0H1440               : Format the floppy disk in device fd0

tar -cMf /dev/fd0                    : Backup the contents of the current directory and subdirectories to multiple floppy disks
tail -f /var/log/messages            : Display the last 10 lines of the system log.
cat /var/log/dmesg                   : Display the file containing the boot time messages - useful for locating problems. Alternatively, use the dmesg command.

*                                    : wildcard - represents everything. eg. cp from/* to will copy all files in the from directory to the to directory

?                                    : Single character wildcard. eg. cp config.? /configs will copy all files beginning with the name config. in the current directory to the directory named configs.

[xyz]                                : Choice of character wildcards. eg. ls [xyz]* will list all files in the current directory starting with the letter x, y, or z.

linux single                         : At the lilo prompt, start in single user mode. This is useful if you have forgotten your password. Boot in single user mode, then run the passwd command.
ps                                   : List current processes

/etc/profile                         : System wide environment variables for all users.
/etc/fstab                           : List of devices and their associated mount points. Edit this file to add cdroms, DOS partitions and floppy drives at startup.

/etc/motd                            : Message of the day broadcast to all users at login
etc/rc.d/rc.local                    : Bash script that is executed at the end of login process. Similar to autoexec.bat in DOS


/etc/HOSTNAME                        : Conatins full hostname including domain.
/etc/cron.*                          : There are 4 directories that automatically execute all scripts within the directory at intervals of hour, day, week or month.
/etc/hosts                           : A list of all know host names and IP addresses on the machine.
/etc/httpd/conf                      : Paramters for the Apache web server
/etc/inittab                         : Specifies the run level that the machine should boot into.
/etc/resolv.conf                     : Defines IP addresses of DNS servers.
/etc/smb.conf                        : Config file for the SAMBA server. Allows file and print sharing with Microsoft clients.

~/.Xdefaults                         : Define configuration for some X-applications. ~ refers to user’s home directory.
/etc/X11/XF86Config                  : Config file for X-Windows


rm name                              : Remove a file or directory called name
rm -rf name                          : Kill off an entire directory and all it’s includes files and subdirectories
cp filename /home/dirname            : Copy the file called filename to the /home/dirname directory
mv filename /home/dirname            : Move the file called filename to the /home/dirname directory 
cat filetoview                       : Display the file called filetoview
man -k keyword                       : Display man pages containing keyword
more filetoview                      : Display the file called filetoview one page at a time, proceed to next page using the spacebar
head filetoview                      : Display the first 10 lines of the file called filetoview
head -20 filetoview                  : Display the first 20 lines of the file called filetoview
tail filetoview                      : Display the last 10 lines of the file called filetoview
tail -20 filetoview                  : Display the last 20 lines of the file called filetoview

rpm -ihv name.rpm                    : Install the rpm package called name

rpm -Uhv name.rpm                    : Upgrade the rpm package called name
rpm -e package                       : Delete the rpm package called package
rpm -l package                       : List the files in the sudo pacman -S fishpackage called package
rpm -ql package                      : List the files and state the installed version of the package called package
rpm -i --force package               : Reinstall the rpm package called name having deleted parts of it (not deleting using rpm -e)

tar -zxvf archive.tar.gz or
tar -zxvf archive.tgz                : Decompress the files contained in the zipped and tarred archive called archive
./configure                          : Execute the script preparing the installed files for compiling


adduser accountname                  : Create a new user call accountname
passwd accountname                   : Give accountname a new password
su                                   : Log in as superuser from current login
exit                                 : Stop being superuser and revert to normal user

ifconfig                             : List ip addresses for all devices on the machine

apropos subject                      : List manual pages for subject
usermount                            : Executes graphical application for mounting and unmounting file systems

/etc/rc.d/init.d/lpd start           : Start the print daemon
/etc/rc.d/init.d/lpd stop            : Stop the print daemon
/etc/rc.d/init.d/lpd status          : Display status of the print daemon
lpq                                  : Display jobs in print queue
lprm                                 : Remove jobs from queue
lpr                                  : Print a file
lpc                                  : Printer control tool
man subject | lpr                    : Print the manual page called subject as plain text
man -t subject | lpr                 : Print the manual page called subject as Postscript output
printtool                            : Start X printer setup interface

```
