# Ejercicio 1

## (a) Programa y Proceso
- **Programa**: Conjunto de instrucciones escritas en un lenguaje de programación que realiza una tarea específica.
- **Proceso**: Instancia de un programa en ejecución, que incluye el código del programa, sus datos, y el estado de la CPU.

## (b) Defina Tiempo de retorno (TR) y Tiempo de espera (TE) para un Job
- **Tiempo de retorno (TR)**: Tiempo total desde que un job entra al sistema hasta que se completa.
- **Tiempo de espera (TE)**: Tiempo total que un job pasa esperando en la cola de listos antes de ser ejecutado.

## (c) Defina Tiempo Promedio de Retorno (TPR) y Tiempo promedio de espera (TPE) para un lote de JOBS
- **Tiempo Promedio de Retorno (TPR)**: Promedio de los tiempos de retorno de todos los jobs en un lote.
- **Tiempo Promedio de Espera (TPE)**: Promedio de los tiempos de espera de todos los jobs en un lote.

## (d) ¿Qué es el Quantum?
- Intervalo de tiempo asignado a cada proceso en un sistema de scheduling de tiempo compartido.

## (e) ¿Qué significa que un algoritmo de scheduling sea apropiativo o no apropiativo (Preemptive o Non-Preemptive)?
- **Apropiativo (Preemptive)**: Permite que un proceso en ejecución sea interrumpido y reemplazado por otro proceso.
- **No apropiativo (Non-Preemptive)**: Un proceso en ejecución no puede ser interrumpido hasta que termine su ejecución.

## (f) ¿Qué tareas realizan?
### i. Short Term Scheduler
- Selecciona qué proceso debe ejecutarse a continuación y asigna la CPU.

### ii. Long Term Scheduler
- Decide qué procesos deben ser admitidos en el sistema desde la cola de nuevos procesos.

### iii. Medium Term Scheduler
- Maneja la suspensión y reanudación de procesos para controlar el grado de multiprogramación.

## (g) ¿Qué tareas realiza el Dispatcher?
- Cambia el contexto de la CPU entre procesos.
- Cambia a modo usuario.
- Salta a la ubicación correcta en el programa del usuario para reanudar su ejecución.