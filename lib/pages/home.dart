import 'package:flutter/material.dart';

// Clase que representa la pantalla de inicio.
class UserHome extends StatelessWidget {
  const UserHome({super.key});

  // Método que construye la interfaz de usuario de la pantalla inicia.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // Cuerpo de la pantalla.
      body: Center(
        // Contenido centrado en la pantalla.
        child: Text(
          'Instagram', // Texto a mostrar en la pantalla.
          textAlign: TextAlign.center, // Alineación del texto al centro.
          style: TextStyle(
              fontFamily: 'Lobster', fontSize: 55), // Estilo del texto.
        ),
      ),
    );
  }
}
