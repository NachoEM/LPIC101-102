#### Herramientas de lineas de comandos de Linux ####

#shells -> bash bsh tsch csh ksh zsh
cd ~ # como cd /home/usuario
pwd #print working directory
echo hello world #imprimir en pantalla
exec someprog #ejecuta programa reemplazando la consola
time someprog #imprime tiempo de ejecución
#set habilita opciones en un script
set -v #habilita, deshabilita verbose
set +v
set -x #xtrace
exit #cierra consola
logout #cierra consola remota
# Comandos internos vs comandos externos
env | grep PATH # PATH
# ~/.bash_history
history -c #limpia el historial
history -10 #últimos 10 comandos 
history | tail -10 #últimos 10 comandos  
history !! #último comando
 echo no registrado en el historial por llevar espacio en blanco #mensaje no registrado en hisotrial
sudo !! #último comnando como su
!12 #ejecuta el comando 12 en el historial
!env #ejecuta el último comando que comienza por env
# /etc/bash.bashrc #configurar consola
# /etc/profile
# ~/.bashrc
# ~/.profile
man man #manual
info ls #como man, pero con paginador y extendido
ls -a #lista todo
ls -d #lista directorios
mkdir test #crea directorio test
cd test #change directory
touch test.txt #crea fichero test.txt
#variables de entorno
printenv HOME #muestra el resultado de la variable de entorno HOME
env #lista todas las variables de entorno
unset HOME #elimina la variable
stdin stdout stderr #tipos de flujo
##redireccion de entrada y salida
> # sobreescribe o crea stdout
>> #añade o crea stdout
2> #sobreescribe o crea stderr
2>> # añade o crea stderr
&> # sobreescribe o crea stdout & stderr
< # stdin = fichero
#<< #stdin = args
<> #stdin & stdout = fichero
first | second | third # stdout del programa first como stdin del progama second...
someprog | tee -a output.txt # (-a) añade, tee escribe en stdout y fichero
wc -l list2.txt| tee -a list2.txt #cuenta las lineas en list2, imprime stdout en pantalla y lo guarda en list2
find ./ -name "*.txt" | xargs rm #xargs construye un comando a partir de stdout, elimina .txt ...
rm 'find ./ name "*.txt"' #('') reemplaza args como comando independiente
#cut
cut -d: -f1 < /etc/passwd | sort | xargs #lista compacta de usuarios
ls *list* | xargs wc #lista y cuenta caracteres
$ echo ./dir1/ ./dir2/ | xargs -n 1 cp -v ./dir3/Template.txt #copia Template en varios directorios a la vez
#cat
cat list1.txt #leer fichero pequeño
cat list1.txt list2.txt >> combinedlist.txt #concatena
cat -EnbsT combinedlist.txt #flags
echo "some text" >> file.txt #crea archivo con texto
join foodtypes.txt foods.txt >> foodsntypes.txt
#od
od list1.txt #octal dump 
od -c -Ax list1.txt #Hex
od -c -Ad list1.txt #Dec
od -c -Ao list1.txt #Octal
#sort
sort mix.txt > ordered.txt # (-r) reverse (-n) numerical (-nr) numerical reverse
sort -k 2n mix.txt >> ordered.txt #(-k args) segunda columna (-u)unique (-M)month
#split
split --verbose -l20 shakespeare-ordered1.txt shakespeare-split
# creating file 'shakespeare-splitaa'
# creating file 'shakespeare-splitab'
# creating file 'shakespeare-splitac'
wc -l *split*
split -db 1K --verbose shakespeare-ordered1.txt 1ksplits # split -b 20 -b 50K -b 50M -b 2G
split -n2 -da 6 --verbose shakespeare-ordered1.txt #-n2 crea 2 archivos con sufjo (-d)numerico (-a)de 6 digitos

#tr
cat mix.txt | tr “[a-z]” “[A-Z]” #uppercase
cat mix.txt | tr “[:lower:]” “[:upper:]”
cat mix.txt |  tr -s '[A-Z]' # (-s) SQUEEEEEEEEEEEEEEZE

#unexpand
#expand
#uniq
#paste
#fmt
#nl
#pr

#head
#tail
#less

#cut
#wc

#regExp

#grep

#sed

#examen Tema 101-1
#1 - 
#2 -
#3 -
#4 -
#5 -
#6 -
#7 -
#8 -
#9 -
#10 -
#11 -
#12 -
#13 -
#14 -
#15 -
#16 -
#17 -
#18 -
#19 -
#20 -
