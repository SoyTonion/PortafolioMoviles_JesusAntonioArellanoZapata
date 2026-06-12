**Primera Aplicación en Flutter**

**Objetivo del proyecto**

El objetivo de este proyecto fue crear una primera aplicación en Flutter que generara pares de palabras aleatorias, permitiera guardar palabras favoritas y mostrara una navegación entre la pantalla principal y la pantalla de favoritos. Durante el desarrollo se aplicaron widgets, manejo de estado, botones, diseño visual, listas y navegación.

**Problema que resuelve**

Este proyecto resuelve la necesidad de comprender cómo se construye una aplicación móvil básica en Flutter, integrando interfaz gráfica, interacción con botones, actualización del estado y navegación entre pantallas. La aplicación permite generar ideas o nombres aleatorios y guardar los que el usuario considere favoritos.

**Tecnologías utilizadas**

Se utilizó Flutter como framework principal para crear la interfaz de la aplicación y Dart como lenguaje de programación. También se utilizaron las dependencias english_words, para generar pares de palabras aleatorias, y provider, para manejar el estado de la aplicación de forma organizada.

**Conceptos aplicados**

En este proyecto se aplicaron conceptos como StatelessWidget, StatefulWidget, ChangeNotifier, Provider, manejo de estado, botones interactivos, listas dinámicas, navegación con NavigationRail, diseño responsivo con LayoutBuilder, uso de Card, Padding, ListView, ListTile, Row, Column y actualización de la interfaz mediante notifyListeners().

**Instrucciones de ejecución**

Para ejecutar el proyecto, primero se debe abrir la carpeta de la aplicación en Visual Studio Code. Después se deben instalar las dependencias con el comando:

`flutter pub get`

Luego se selecciona un dispositivo, emulador o navegador compatible. Finalmente, se ejecuta la aplicación con:

`flutter run`

La aplicación iniciará mostrando una pantalla principal con una palabra aleatoria, un botón Like para guardarla como favorita y un botón Next para generar una nueva palabra. Desde el riel de navegación se puede cambiar entre la pantalla Home y la pantalla Favorites.

**Reflexión personal**

¿Qué aprendí?
Aprendí a crear una aplicación básica en Flutter utilizando widgets, botones, tarjetas, navegación y manejo de estado. También comprendí cómo separar el código en widgets como BigCard, GeneratorPage y FavoritesPage, lo que ayuda a mantener la aplicación más organizada.

¿Qué fue difícil?
Lo más difícil fue entender cómo funciona el manejo de estado con Provider y cómo hacer que la interfaz se actualizara cuando se agregaba o quitaba una palabra de favoritos. También fue un reto organizar la navegación entre páginas usando NavigationRail y selectedIndex.

¿Qué mejoraría?
Mejoraría la aplicación agregando una opción para eliminar favoritos directamente desde la página Favorites, cambiar el diseño visual, agregar animaciones y guardar los favoritos aunque se cierre la aplicación. También podría personalizar los colores y adaptar mejor la interfaz para dispositivos móviles.
