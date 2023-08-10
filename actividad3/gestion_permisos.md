# Gestión de Permisos

La actividad consiste Familiarizarse con la administración de usuarios, grupos y permisos en un sistema operativo Linux.

## Parte 1: Gestión de Usuarios

1.  Creación de Usuarios: Se crearon los usuarios llamados `usuario1`, `usuario2` y `usuario3`.
Con el comando:
```code
sudo adduser {user_name}
```
![Imagen 1](/actividad3/imgs/img1.jpeg "Imagen 1")

2.  Asignación de Contraseñas:
Con el comando:
```code
sudo passwd {user_name}
```
![Imagen 1](/actividad3/imgs/img2.jpeg "Imagen 1")

3.  Información de Usuarios: 
```code
id {user_name}
```
![Imagen 1](/actividad3/imgs/img3.jpeg "Imagen 1")

4.  Eliminación de Usuarios:
```code
sudo userdel -r {user_name}
```
![Imagen 1](/actividad3/imgs/img4.jpeg "Imagen 1")

## Parte 2: Gestión de Grupos

1.  Creación de Grupos: Crea dos grupos llamados `grupo1` y `grupo2`.
Con el comando:
```code
sudo addgroup {group_name}
```
![Imagen 1](/actividad3/imgs/img5.jpeg "Imagen 1")

2.  Agregar Usuarios a Grupos:
Con el comando:
```code
sudo usermod -aG {group_name} {user_name}
```
![Imagen 1](/actividad3/imgs/img6.jpeg "Imagen 1")

3.  Verificar Membresía:
```code
groups {user_name}
```

4.  Eliminar Grupo:
```code
sudo delgroup {user_name}
```
![Imagen 1](/actividad3/imgs/img7.jpeg "Imagen 1")


## Parte 3: Gestión de Permisos

1.  Creación de Archivos y Directorios:

![Imagen 1](/actividad3/imgs/img8.jpeg "Imagen 1")

2.  Verificar Permisos:
Con el comando:
```code
# Verificar permisos del archivo
ls -l {path_file}

# Verificar permisos del directorio
ls -ld {path_dir}
```
![Imagen 1](/actividad3/imgs/img9.jpeg "Imagen 1")


3.  Modificar Permisos:

![Imagen 1](/actividad3/imgs/img10.jpeg "Imagen 1")


4.  Comprobación de Acceso:

![Imagen 1](/actividad3/imgs/img11.jpeg "Imagen 1")
