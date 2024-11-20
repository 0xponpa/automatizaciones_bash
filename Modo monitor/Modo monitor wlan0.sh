#!/bin/bash

# Obtener fecha y hora actual en formato día-mes-año
fecha=$(date +"%d-%m-%Y_%H-%M-%S")

# Poner tarjeta en modo monitor
sudo airmon-ng start wlan0
sleep 5  # Esperar 5 segundos

# Empezar monitorización
#sudo airodump-ng --band a wlan0mon
sudo airodump-ng wlan0mon --band abg
sleep 5  # Esperar 5 segundos
