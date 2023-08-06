# Scripting

La actividad consiste en crear un script en BASH que permita consultar los datos de un usuario de GitHub a través de un webservice y luego escribe un log con algunos de los datos del usuario.

## Configuración

1.  DEscargar el archivo ![github_user.sh](/actividad2/github_user.sh) de este repositorio.
2.  Se debe reemplazar el valro de la variable 'GITHUB_USER' para obtener los datos el usuario deseado.
3.  Instalar la herramienta jq para manipular el JSON obtenido desde el webservice.
```code
chmod +x tu_script.sh
```
4.  Debe de dale permisos de ejecución al archivo del script.
```code
chmod +x tu_script.sh
```

### Ejemplo de uso:

1. El script solicitará introducir el nombre de usuario de GitHub.
2. Consultará los datos del usuario usando cURL y almacenará la respuesta en una variable.
3. Extraerá los datos del JSON obtenido (nombre de usuario, ID de usuario y fecha de creación).
4. Imprimirá el mensaje con los datos del usuario obtenidos.
5. Creará un directorio en `/tmp` con el formato `/tmp/<fecha>` (donde `<fecha>` es la fecha actual en formato `año-mes-día`).
6. Creará un log file con el mensaje anterior en la ruta `/tmp/<fecha>/saludos.log`.


