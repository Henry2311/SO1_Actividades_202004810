#!/bin/bash

# Nombre de usuario de GitHub
GITHUB_USER="Henry2311"

# Consultar los datos del usuario usando cURL y almacenar la respuesta en una variable
response=$(curl -s "https://api.github.com/users/${GITHUB_USER}")

# Extraer los datos del JSON obtenido
github_user=$(echo "$response" | jq -r '.login')
user_id=$(echo "$response" | jq -r '.id')
created_at=$(echo "$response" | jq -r '.created_at')

# Imprimir el mensaje con los datos del usuario
echo "Hola $github_user. User ID: $user_id. Cuenta fue creada el: $created_at."

# Crear el directorio para el log file usando la fecha actual
fecha=$(date +"%Y%m%d")
log_dir="/tmp/$fecha"
mkdir -p "$log_dir"

# Crear el log file con la salida del mensaje
log_file="$log_dir/saludos.log"
echo "Hola $github_user. User ID: $user_id. Cuenta fue creada el: $created_at." > "$log_file"

echo "El log se ha guardado en: $log_file"
