import 'dart:io';
import 'dart:convert';

class Registro {
  String _nombre;
  int _edad;
  double _salario;

  Registro(this._nombre, this._edad, this._salario);

  String get nombre => _nombre;
  int get edad => _edad;
  double get salario => _salario;

  factory Registro.fromJson(Map<String, dynamic> json) {
    return Registro(
      json['nombre'] ?? 'Sin nombre',
      json['edad'] ?? 0,
      (json['salario'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nombre': _nombre,
      'edad': _edad,
      'salario': _salario,
    };
  }

  void mostrarRegistro() {
    print("Nombre: $_nombre | Edad: $_edad | Salario: \$$_salario");
  }
}

Future<List<Registro>> cargarRegistros(String rutaArchivo) async {
  try {
    final archivo = File(rutaArchivo);

    if (!await archivo.exists()) {
      print("El archivo no existe.");
      return [];
    }

    final contenido = await archivo.readAsString();
    final List<dynamic> datosJson = jsonDecode(contenido);

    return datosJson.map((dato) => Registro.fromJson(dato)).toList();
  } catch (e) {
    print("Error al cargar los datos: $e");
    return [];
  }
}

void mostrarTodos(List<Registro> registros) {
  if (registros.isEmpty) {
    print("No hay registros para mostrar.");
    return;
  }

  for (var registro in registros) {
    registro.mostrarRegistro();
  }
}

void buscarPorNombre(List<Registro> registros, String nombre) {
  var resultados = registros.where(
    (registro) => registro.nombre.toLowerCase().contains(nombre.toLowerCase()),
  );

  if (resultados.isEmpty) {
    print("No se encontraron registros con ese nombre.");
  } else {
    for (var registro in resultados) {
      registro.mostrarRegistro();
    }
  }
}

void filtrarPorEdad(List<Registro> registros, int edadMinima) {
  var resultados = registros.where((registro) => registro.edad >= edadMinima);

  if (resultados.isEmpty) {
    print("No se encontraron registros con esa edad.");
  } else {
    for (var registro in resultados) {
      registro.mostrarRegistro();
    }
  }
}

void filtrarPorSalario(List<Registro> registros, double salarioMinimo) {
  var resultados = registros.where((registro) => registro.salario >= salarioMinimo);

  if (resultados.isEmpty) {
    print("No se encontraron registros con ese salario.");
  } else {
    for (var registro in resultados) {
      registro.mostrarRegistro();
    }
  }
}

Map<String, dynamic> calcularEstadisticas(List<Registro> registros) {
  if (registros.isEmpty) {
    return {
      'cantidadRegistros': 0,
      'salarioPromedio': 0,
      'edadMinima': 0,
      'edadMaxima': 0,
    };
  }

  double sumaSalarios = 0;
  int edadMinima = registros.first.edad;
  int edadMaxima = registros.first.edad;

  for (var registro in registros) {
    sumaSalarios += registro.salario;

    if (registro.edad < edadMinima) {
      edadMinima = registro.edad;
    }

    if (registro.edad > edadMaxima) {
      edadMaxima = registro.edad;
    }
  }

  return {
    'cantidadRegistros': registros.length,
    'salarioPromedio': sumaSalarios / registros.length,
    'edadMinima': edadMinima,
    'edadMaxima': edadMaxima,
  };
}

void mostrarEstadisticas(List<Registro> registros) {
  var estadisticas = calcularEstadisticas(registros);

  print("Cantidad de registros: ${estadisticas['cantidadRegistros']}");
  print("Salario promedio: \$${estadisticas['salarioPromedio'].toStringAsFixed(2)}");
  print("Edad mínima: ${estadisticas['edadMinima']}");
  print("Edad máxima: ${estadisticas['edadMaxima']}");
}

Future<void> exportarResumen(List<Registro> registros) async {
  var estadisticas = calcularEstadisticas(registros);

  final archivo = File('resumen.json');
  final contenido = JsonEncoder.withIndent('  ').convert(estadisticas);

  await archivo.writeAsString(contenido);

  print("Resumen exportado correctamente en resumen.json");
}

Future<void> mostrarMenu(List<Registro> registros) async {
  while (true) {
    print("\n===== MENÚ DE ANÁLISIS DE DATOS =====");
    print("1. Mostrar todos los registros");
    print("2. Buscar por nombre");
    print("3. Filtrar por edad mínima");
    print("4. Filtrar por salario mínimo");
    print("5. Mostrar estadísticas");
    print("6. Exportar resumen a JSON");
    print("7. Salir");

    stdout.write("Seleccione una opción: ");
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case "1":
        mostrarTodos(registros);
        break;

      case "2":
        stdout.write("Ingrese el nombre a buscar: ");
        String nombre = stdin.readLineSync() ?? '';
        buscarPorNombre(registros, nombre);
        break;

      case "3":
        stdout.write("Ingrese la edad mínima: ");
        int edad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        filtrarPorEdad(registros, edad);
        break;

      case "4":
        stdout.write("Ingrese el salario mínimo: ");
        double salario = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        filtrarPorSalario(registros, salario);
        break;

      case "5":
        mostrarEstadisticas(registros);
        break;

      case "6":
        await exportarResumen(registros);
        break;

      case "7":
        print("Programa finalizado.");
        return;

      default:
        print("Opción inválida.");
    }
  }
}

Future<void> main() async {
  List<Registro> registros = await cargarRegistros('datos.json');

  if (registros.isNotEmpty) {
    print("Datos cargados correctamente.");
  }

  await mostrarMenu(registros);
}