#!/bin/bash

HASH=$(sudo grep -i vagrant /etc/shadow | awk -F ':' '{print $2}')

echo "Creacion de grupos"

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
echo

echo "Creacion de los usuarios"

sudo useradd -m -p "$HASH" -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -p "$HASH" -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -p "$HASH" -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -p "$HASH" -s /bin/bash -G p1c2_2024_gProfesores p1c2_2024_P1

echo

echo "Modificacion de los permisos de los directorios"

sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chmod -R 760 /Examenes-UTN/alumno_2
sudo chmod -R 700 /Examenes-UTN/alumno_3
sudo chmod -R 775 /Examenes-UTN/profesores
echo


echo "Modifico los dueños de los directorios"
sudo chown -R p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chown -R p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown -R p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
echo

echo "Creando archivo validar.txt con la salida whoami"

sudo su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1
echo


