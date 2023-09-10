# My Linux

## Settings for automatic installations on my Linux

### For iniciate configurate the github:
```
git config --global user.name "yag0x1"

git config --global user.email "yagx01@gmail.com"

cd ~/.ssh

ssh-keygen -o -t rsa -C "yagx01@gmail.com"

cat id_rsa.pub
```
Put the keys in: https://github.com/settings/keys


### To run shell script:
```
chmod u+x mylinuxconfs.sh
./initial_config.sh 
```


### Optional:
```
sudo apt install snapd -y
sudo apt-get install gnome-software-plugin-snap -y
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
```

## Linux commands

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
 
/dir                                 :  list all files containing textstringtofind
```
continuar: https://gse.ufsc.br/bezerra/disciplinas/Extensao/Linux/linuxmanual.pdf














