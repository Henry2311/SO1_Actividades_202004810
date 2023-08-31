# <center>**SERVICIOS SYSTEMD UNIT**</center>

## Paso 1: Crea el script
Crea un archivo para tu script en el directorio que desees. En este caso saludo.sh Pegue el siguiente codigo en el archivo:
```code
#!/bin/bash

while true; do
    echo "Hola mundo $(date)"
    sleep 10
done

```
Este mostrará un mensaje en consola cada 10 segundos 

## Paso 2: Crea el archivo de unidad de systemd
Ahora, crea un archivo de unidad de systemd para el servicio. Abre un terminal y ejecuta:
```code
sudo nano /etc/systemd/system/saludo.service

```
    
Dentro del archivo, agrega el siguiente contenido:

```code
    [Unit]
    Description=Saludo y fecha actual service
    After=network.target

    [Service]
    Type=simple
    ExecStart={ubicacion de su archivo}/saludo.sh

    [Install]
    WantedBy=multi-user.target
```

## Paso 3: Habilita y arranca el servicio
Una vez que hayas creado el archivo de unidad de systemd, ejecuta los siguientes comandos para habilitar y arrancar el servicio:

```code
    sudo systemctl daemon-reload
    sudo systemctl enable saludo.service
    sudo systemctl start saludo.service
```

## Paso 4: Verifica el estado del servicio
Puedes verificar el estado del servicio con el siguiente comando:
```code
    sudo systemctl status saludo.service
```
   

