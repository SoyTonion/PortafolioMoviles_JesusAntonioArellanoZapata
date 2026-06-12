**Análisis de Datos con Dart

Objetivo del proyecto**

El objetivo de este proyecto fue construir una aplicación de consola en Dart capaz de cargar, procesar y analizar datos almacenados en formato JSON, aplicando clases, objetos, funciones, estructuras de datos, Null Safety y generación de reportes básicos.

**Problema que resuelve**

Este proyecto resuelve la necesidad de leer información desde un archivo externo, procesarla y obtener resultados útiles a partir de los datos. La aplicación permite buscar registros, filtrar información, calcular estadísticas básicas y exportar un resumen en formato JSON, lo cual puede aplicarse en situaciones donde se necesita analizar información de personas, empleados, salarios o registros similares.

**Tecnologías utilizadas**

Se utilizó el lenguaje Dart para desarrollar la lógica del programa. También se trabajó con archivos JSON para almacenar y leer datos estructurados. Además, se usaron las librerías dart:io para la lectura y escritura de archivos, y dart:convert para convertir la información JSON en estructuras utilizables dentro del programa.

**Conceptos aplicados**

En este proyecto se aplicaron clases y objetos para modelar los datos mediante una clase Registro. También se utilizaron listas, funciones, estructuras de control, búsqueda, filtrado, cálculo de estadísticas, lectura de archivos, escritura de archivos y Null Safety para evitar errores al manipular datos vacíos o inválidos.

**Instrucciones de ejecución**

Para ejecutar el proyecto, primero se debe abrir la carpeta del programa en Visual Studio Code. Después se debe verificar que el archivo datos.json esté dentro del proyecto y que contenga los registros necesarios. Luego se abre la terminal y se ejecuta el archivo principal con el siguiente comando:

`dart run main.dart`

Al iniciar el programa, se muestra un menú en consola donde el usuario puede elegir entre mostrar registros, buscar por nombre, filtrar por edad, filtrar por salario, mostrar estadísticas, exportar un resumen o salir del programa.

**Reflexión personal**

¿Qué aprendí?
Aprendí a crear una aplicación de consola en Dart que trabaja con archivos JSON, utilizando clases, listas y funciones para organizar y analizar información. También aprendí a calcular estadísticas básicas y a exportar resultados en un nuevo archivo JSON.

¿Qué fue difícil?
Lo más difícil fue manejar correctamente la lectura del archivo JSON y evitar errores cuando el archivo no existía, estaba vacío o tenía datos incorrectos. También fue necesario cuidar el uso de Null Safety para que el programa no fallara al convertir datos.

¿Qué mejoraría?
Mejoraría el proyecto agregando más opciones al menú, como editar registros, eliminar datos, ordenar por salario o edad, y guardar reportes más completos. También se podría mejorar la presentación de los resultados para que sean más fáciles de leer.
