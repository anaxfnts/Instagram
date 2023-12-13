import 'package:flutter/material.dart';
import 'homepage.dart';

// Punto de entrada de la aplicación.
void main() {
  // Ejecuta la aplicación Flutter.
  runApp(const MyApp());
}

// Clase principal que representa la aplicación.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Método que construye la interfaz de usuario de la aplicación.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Desactiva el banner de modo debug en la esquina superior derecha.
      debugShowCheckedModeBanner: false,

      // Define la pantalla de inicio de la aplicación como HomePage.
      home: HomePage(),
    );
  }
}
