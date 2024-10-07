#!/bin/bash
# Comprobar el estado del servicio apache2
if systemctl is-active --quiet apache2; then
    echo "El servicio apache2 esta activo."
else
    echo "El servicio apache2 no esta activo. Intentando iniciarlo..."
    sudo systemctl start apache2
    # Volver a comprobar si el servicio se inicio correctamente
    if systemctl is-active --quiet apache2; then
        echo "El servicio apache2 se ha iniciado correctamente."
    else
        echo "Error: No se pudo iniciar el servicio apache2."
        exit 1
    fi
fi
