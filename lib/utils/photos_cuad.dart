import 'package:flutter/material.dart';

// Clase que representa una sección de fotos en formato cuadrícula.
// ignore: camel_case_types
class Photo_cuad extends StatelessWidget {
  const Photo_cuad({super.key});

  // Método que construye la interfaz de usuario de la sección de fotos en formato cuadrícula.
  @override
  Widget build(BuildContext context) {
    return GridView(
      // Configuración de la cuadrícula.
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

      // Lista de elementos en la cuadrícula (en este caso, imágenes).
      children: [
        Image.asset(
          'assets/images/posts/gato.jpg',
        ),
        Image.asset(
          'assets/images/posts/conjunto.jpg',
        ),
        Image.asset(
          'assets/images/posts/avion.jpg',
        ),
        Image.asset(
          'assets/images/posts/concierto.jpg',
        ),
        Image.asset(
          'assets/images/posts/beso.jpg',
        ),
        Image.asset(
          'assets/images/posts/flores.jpg',
        ),
        Image.asset(
          'assets/images/posts/discos.jpg',
        ),
        Image.asset(
          'assets/images/posts/piano.jpg',
        ),
        Image.asset(
          'assets/images/posts/pared.jpg',
        ),
        Image.asset(
          'assets/images/posts/vhs.jpg',
        ),
        Image.asset(
          'assets/images/posts/cartel.jpg',
        ),
        Image.asset(
          'assets/images/posts/plantas.jpg',
        ),
      ],
    );
  }
}
