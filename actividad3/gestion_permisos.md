# Gestión de Permisos

La actividad consiste Familiarizarse con la administración de usuarios, grupos y permisos en un sistema operativo Linux.

## Parte 1: Gestión de Usuarios

1.  Creación de Usuarios: Se crearon los usuarios llamados `usuario1`, `usuario2` y `usuario3`.
Con el comando:
```code
sudo adduser {user_name}
```
![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")

2.  Asignación de Contraseñas:
Con el comando:
```code
sudo passwd {user_name}
```
![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")

3.  Información de Usuarios: 
```code
id {user_name}
```
![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")

4.  Eliminación de Usuarios:
```code
sudo userdel -r {user_name}
```
![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")

## Parte 2: Gestión de Grupos

1.  Creación de Grupos: Crea dos grupos llamados `grupo1` y `grupo2`.
Con el comando:
```code
sudo addgroup {group_name}
```
![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")

2.  Agregar Usuarios a Grupos:
Con el comando:
```code
sudo usermod -aG {group_name} {user_name}
```
![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")

3.  Verificar Membresía:
```code
groups {user_name}
```
![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")

4.  Eliminar Grupo:
```code
sudo delgroup {user_name}
```
![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")


## Parte 3: Gestión de Permisos

1.  Creación de Archivos y Directorios:

![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")

2.  Verificar Permisos:
Con el comando:
```code
# Verificar permisos del archivo
ls -l {path_file}

# Verificar permisos del directorio
ls -ld {path_dir}
```
![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")


3.  Modificar Permisos:

![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")


4.  Comprobación de Acceso:

![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")
