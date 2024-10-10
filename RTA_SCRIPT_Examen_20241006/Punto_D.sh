#!/bin/bash

echo "Creacion de Estructura Asimétrica"


sudo mkdir -p /Estructura_Asimetrica/{{correo,cliente}/cartas_{1..100},correo/carteros_{1..10}}



echo "mostrando el resultado"

tree /Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --columns 4

