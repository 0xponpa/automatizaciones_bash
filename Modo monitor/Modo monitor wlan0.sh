#!/bin/bash

# obtenemos fecha y hora en formato d-m-Y
fecha=$(date +"%d-%m-%Y_%H-%M-%S")

# se pone tarjeta en modo monitor
sudo airmon-ng start wlan0
sleep 5  # Esperar 5 segundos

# se empieza monitorizacion
sudo airodump-ng wlan0mon --band abg

sleep 5  # esperar 5 segundos
