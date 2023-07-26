# Modo Usuario vs Modo Kernel

Hace muchas décadas, cuando las computadoras eran del tamaño de una habitación, los usuarios ejecutaban sus programas con grandes dificultades y, a veces, sus programas incluso colapsaban la computadora. Para protegernos contra los programas que bloqueaban continuamente las computadoras, desarrollamos sistemas operativos más nuevos con dos modos operativos distintos.

El modo kernel, también conocido como modo de sistema, es uno de los modos de funcionamiento de la unidad central de procesamiento (CPU). Si bien los procesos se ejecutan en modo kernel, tienen acceso ilimitado al hardware.

El otro modo es el modo de usuario, que es un modo sin privilegios para los programas de usuario. Por lo tanto , cuando un proceso se ejecuta en modo usuario, tiene acceso limitado a la CPU y la memoria.

## Modo de Usuario

El sistema está en modo de usuario cuando el sistema operativo está ejecutando una aplicación de usuario, como el manejo de un editor de texto. La transición del modo usuario al modo kernel ocurre cuando la aplicación solicita la ayuda del sistema operativo o se produce una interrupción o una llamada al sistema.

## Modo Kernel
El sistema se inicia en modo kernel cuando arranca y después de cargar el sistema operativo, ejecuta aplicaciones en modo usuario. Hay algunas instrucciones privilegiadas que solo se pueden ejecutar en modo kernel.

Estas son instrucciones de interrupción, gestión de entrada y salida, etc. Si las instrucciones privilegiadas se ejecutan en modo usuario, es ilegal y se genera una trampa.

### Necesidad de la dualidad

La falta de un modo dual, es decir, un modo de usuario y un modo kernel en un sistema operativo, puede causar problemas graves. Algunos de estos son:

* Un programa de usuario en ejecución puede borrar accidentalmente el sistema operativo al sobrescribirlo con datos de usuario.
* Múltiples procesos pueden escribir en el mismo sistema al mismo tiempo, con resultados desastrosos.

## Diferencias entre Modo Usuario y MoUdo Kernel
|                                    Modo Kernel                                    |                                                                     Modo Usuario                                                                    |
|:---------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------|
| El programa tiene acceso directo y sin restricciones a los recursos del sistema.  | El programa de aplicación no tiene acceso directo a los recursos del sistema. Para acceder a los recursos, se debe realizar una llamada al sistema. |
| Todo el sistema operativo puede dejar de funcionar si se produce una interrupción | Un solo proceso falla si ocurre una interrupción.                                                                                                   |
| Todos los procesos comparten un único espacio de direcciones virtuales.           | Todos los procesos obtienen un espacio de direcciones virtuales separado.                                                                           |
| Se conoce como modo maestro, modo privilegiado o modo de sistema.                 | Se conoce como modo sin privilegios, modo restringido o modo esclavo.                                                                               |
| Es capaz de hacer referencia a ambas áreas de memoria.                            | Solo puede hacer referencias a la memoria asignada para el modo de usuario.                                                                         |
| Un bloqueo del sistema en modo kernel es grave y complica las cosas.              | Se puede recuperar un bloqueo del sistema simplemente reanudando la sesión.                                                                         |g