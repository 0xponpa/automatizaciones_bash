#!/bin/bash

# carpeta destino para el dumpeo
directorio_destino="/home/kali/Desktop/Dumpeos/"

# tarjeta en modo monitor
sudo airmon-ng start wlan0
sleep 5  # Esperar 5 segundos antes de seguir

# Obtener fecha y hora actual en formato d-m-y
fecha=$(date +"%d-%m-%Y_%H-%M-%S")

# Crear carpeta con la fecha
carpeta_fecha="$directorio_destino$fecha/"
mkdir -p "$carpeta_fecha"

# Empezar monitorización y guardar datos con columnas extra
archivo="$carpeta_fecha/dumpeo 2,4bg y 5a_$fecha"
sudo airodump-ng wlan0mon --manufacturer --uptime --beacons --gpsd --wps --showack -w "$archivo" --band abg



sleep 5
