#!/bin/bash

echo "memoria RAM:"
MEMORIA=$(cat /proc/meminfo | grep -i "memtotal" > UTNFRA_SO_1P2C_2024_AParedes/RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt)

echo "Obtengo informacion del chasis:"
CHASIS=$(sudo dmidecode -t chassis | grep -i "manufacturer" >> UTNFRA_SO_1P2C_2024_AParedes/RTA_ARCHIVOS_Examen_20241006/Filtro_Basico.txt)

cat $CHASIS

cat $MEMORIA
