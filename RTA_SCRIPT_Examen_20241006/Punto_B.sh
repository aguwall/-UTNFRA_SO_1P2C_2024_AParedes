#!/bin/bash

DISCO=$(sudo fdisk    -l |grep "10 GiB" | awk '{print $2}' | awk -F ':' '{print $1}')

echo
echo "Particionando el disco: $DISCO"

echo "extendido disco"
n
e

+8GB
echo
echo "primero disco logico"
n
l

+100M
echo
echo "segundo disco logico"
n
l

+100M
echo
echo "tercer disco logico"
n
l

+100M
echo
echo "cuarto disco logico"
n
l

+100M
echo
echo "quinto disco logico"
n
l

+100M
echo
echo "sexto disco logico"
n
l

+100M
echo
echo "septimo disco logico"
n
l

+100M
echo
echo "octava disco logico"
n
l

+100M
echo
echo "noveno disco logico"
n
l

+100M
echo
echo "decimo disco logico"
n
l

+100M





echo "Formateando discos"

sudo mkfs.ext4 ${DISCO}5
sudo mkfs.ext4 ${DISCO}6
sudo mkfs.ext4 ${DISCO}7
sudo mkfs.ext4 ${DISCO}8
sudo mkfs.ext4 ${DISCO}9
sudo mkfs.ext4 ${DISCO}10
sudo mkfs.ext4 ${DISCO}11
sudo mkfs.ext4 ${DISCO}12
sudo mkfs.ext4 ${DISCO}13
sudo mkfs.ext4 ${DISCO}14



echo "Haciendo el montaje persistente"

echo "Monto en forma permanente"
#      <dispositivo>  <dir>   <tipo>   <opciones>    <dump>     <fsck>
echo
echo "${DISCO}5  /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}6  /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}7  /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}8  /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}9  /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}10 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}11 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}12 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}13 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}14 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

