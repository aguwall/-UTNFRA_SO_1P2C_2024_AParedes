#!/bin/bash


echo "Datos"
MI_IP=$(curl -s ifconfig.me)
MI_USUARIO=$(whoami)
MI_HASH=$(sudo grep -i vagrant /etc/shadow | awk -F ':' '{print $2}')
MI_URL=$(sudo git remote get-url origin)



echo "Mi IP pública es : " $MI_IP > RTA_ARCHIVOS_Examen_20241006/Filtro_Avanzado.txt
echo "Mi usuario es: " $MI_USUARIO >> RTA_ARCHIVOS_Examen_20241006/Filtro_Avanzado.txt
echo "El HASH de mi usuario es: " $MI_HASH >> RTA_ARCHIVOS_Examen_20241006/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: " $MI_URL >> RTA_ARCHIVOS_Examen_20241006/Filtro_Avanzado.txt
echo


