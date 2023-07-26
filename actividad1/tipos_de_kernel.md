# Actividad #1

El kernel es el núcleo de un sistema operativo y, por tanto, la interfaz entre el software y el hardware. Es por ello por lo que se está usando continuamente. En pocas palabras: el kernel es el corazón de un sistema operativo.

Sin embargo, no solo es el núcleo del sistema, sino también un programa que controla todos los accesos al procesador y a la memoria, es responsable de los drivers (controladores) más importantes y puede acceder directamente al hardware. Un kernel es la base de la interacción entre el hardware y el software y gestiona sus recursos de la forma más eficiente posible.

## ¿Qué es el Kernel?

El kernel se encuentra en el centro del sistema operativo y controla todas las funciones importantes del hardware, ya sea un sistema Linux macOS o Windows, un smartphone, un servidor, una virtualización como KVM o cualquier otro tipo de ordenador.

### Estructura

Un kernel siempre tiene la misma estructura y consta de varias capas:

* Interfaz con el hardware -> Esta capa realiza tareas como la de controlador de red o controlador PCI Express.
* Gestión de la memoria -> Distribuye la memoria RAM y la memoria virtual.
* Gestor de procesos (scheduler) -> Se encarga de la gestión del tiempo y permite el multitasking.
* Gestor de dispositivos (Device Management) 
* Sistema de archivos -> Capa más alta del Kernel, Allí, se le asigna un espacio en la memoria principal o secundaria a los procesos.

El otro modo es el modo de usuario, que es un modo sin privilegios para los programas de usuario. Por lo tanto , cuando un proceso se ejecuta en [modo usuario](/actividad1/usuario_v_kernel_mode.md), tiene acceso limitado a la CPU y la memoria.

![Capas del Kernel](/actividad1/imgs/diagrama.jpeg "Capas del Kernel")

### Funciones del Kernel

* Gestión del almacenamiento: controla cuánta memoria se utiliza y dónde.
* Gestión de procesos: determina qué procesos puede utilizar la CPU, cuándo y durante cuánto tiempo.
* Controlador de dispositivos: comunica el hardware con los procesos.
* Llamadas al sistema y seguridad: recibe peticiones de servicio de los procesos.

## Tipos de Kernel

| Tipo        | Descripción                                                                                                                                                                                                                                                                                                                                                                          | Ejemplos                         |
|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
| Monolítico  | Tiene una estructura única donde todos los subsistemas se encuentran en un único módulo lógico. Carece de unas interfaces bien definidas entre subsistemas y permite trabajar en un solo espacio de direcciones cuando se carga el código en la memoria RAM, lo que reduce la complejidad. Además, trabajará en su totalidad en modo supervisor.                                     | DOS, MacOS, OpenVMS, Multics     |
| Microkernel | Es un micronúcleo que tiene una estructura modular, es decir, los subsistemas no se encuentran en un único módulo lógico, sino que cada uno está en un módulo propio. Esto hace que resulten más fáciles de desarrollar, pero su rendimiento puede ser inferior.                                                                                                                     | AIX, Hurd, L4, Minix, SymbianOS  |
| Híbrido     | Es una mezcla de los dos conceptos anteriores, con una estructura básica como un microkernel y otras partes de código no esenciales como módulos                                                                                                                                                                                                                                     | Windows NT, XNU (macOS), ReactOS |
| Nanokernel  | Este tipo de kernel es muy recudido, aún más pequeño que un microkernel. Son usados para sistemas embebidos porque aporta mucha fiabilidad.                                                                                                                                                                                                                                          | LSE/OS                           |
| Exokernel   | Está estructurado de forma vertical, con una estructura bastante novedosa. Son núcleos pequeños y se crearon con fines de investigación. En este caso, los programas son los encargados de tomar decisiones sobre la gestión de recursos de hardware haciendo uso de ciertas bibliotecas. El kernel solo se encargará de evitar errores de permisos de hardware y eludir conflictos. | ExOS, servidor web Cheetah       |
| Unikernel   | Es un concepto diferente y reducido que permite simplificar al máximo y eliminar capas intermedias entre las aplicaciones y el hardware. Es usado también en sistemas embebidos o dispositivos de bajo consumo como los de IoT                                                                                                                                                       | ClickOS, runtime.js, Clive       |