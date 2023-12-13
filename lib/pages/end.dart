import 'package:flutter/material.dart';

// Clase que representa la pantalla de fin de la aplicación.
class UserEnd extends StatelessWidget {
  const UserEnd({super.key});

  // Método que construye la interfaz de usuario de la pantalla de finalización.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // Cuerpo de la pantalla.
      body: Center(
        child: Text(
          'Fin App - Ana Rosa',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Lobster', fontSize: 55),
        ),
      ),
    );
  }
}
