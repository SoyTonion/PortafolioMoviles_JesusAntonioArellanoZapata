**Mini Reproductor de Música en Flutter**

**Objetivo del proyecto**

El objetivo de este proyecto fue desarrollar una aplicación básica en Flutter que simulara y ejecutara las funciones principales de un reproductor de música. Para ello se implementó una interfaz visual con imagen de portada, nombre de canción, barra de progreso y botones de control. Además, se utilizó la librería just_audio para reproducir un archivo de audio real desde los assets del proyecto.

**Problema que resuelve**

Este proyecto resuelve la necesidad de comprender cómo una aplicación móvil puede pasar de ser una interfaz visual estática a una aplicación funcional que reproduce audio. A través de este reproductor se logró cargar una canción desde los archivos internos del proyecto, reproducirla, pausarla y mostrar el avance del audio mediante una barra de progreso.

**Tecnologías utilizadas**

Para el desarrollo de este proyecto se utilizó Flutter como framework principal para construir la interfaz móvil y Dart como lenguaje de programación. También se utilizaron las librerías just_audio para la reproducción del audio y rxdart para combinar los datos de posición, duración y progreso de la canción. Además, se trabajó con la carpeta assets, donde se guardaron el archivo de audio y la imagen de portada utilizada en la aplicación.

**Conceptos aplicados**

En este proyecto se aplicaron conceptos como creación de proyectos Flutter, configuración de dependencias en pubspec.yaml, uso de assets, widgets visuales, StatefulWidget, manejo de estado, reproducción de audio, uso de streams, barra de progreso con Slider, organización de archivos y diseño de interfaz con Scaffold, AppBar, Column, Row, Container, Text, IconButton y StreamBuilder.

**Instrucciones de ejecución**

Para ejecutar el proyecto, primero se debe abrir la carpeta del proyecto en Visual Studio Code. Después se debe verificar que en el archivo pubspec.yaml estén agregadas las dependencias just_audio y rxdart, así como las rutas de los assets utilizados.

Luego se ejecuta el siguiente comando para descargar las dependencias:

`flutter pub get`

Después se debe seleccionar un dispositivo, emulador o navegador compatible y ejecutar la aplicación con:

`flutter run`

Si se ejecuta en Windows y aparece un error relacionado con symlinks, se debe activar el Modo de desarrollador en la configuración de Windows. También se puede probar la aplicación en un emulador Android o dispositivo físico.

**Reflexión personal**

¿Qué aprendí?

Aprendí a crear una aplicación en Flutter que no solo muestra una interfaz, sino que también reproduce audio real. También aprendí a configurar dependencias externas, utilizar archivos desde la carpeta de assets, manejar un reproductor con AudioPlayer y mostrar el avance de la canción mediante una barra de progreso.

¿Qué fue difícil?

Lo más difícil fue configurar correctamente las dependencias y corregir errores de sintaxis en los diferentes archivos del proyecto. También fue un reto comprender cómo conectar la reproducción del audio con la interfaz, especialmente al trabajar con streams, duración, posición actual y barra de progreso.

¿Qué mejoraría?

Mejoraría la aplicación agregando una lista de varias canciones, funciones reales para los botones de siguiente y anterior, diseño más personalizado, animaciones y una mejor organización visual. También se podría agregar una pantalla de lista de reproducción y permitir cambiar de canción desde la interfaz.
