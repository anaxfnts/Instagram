import 'package:flutter/material.dart';

// Clase que representa una sección de fotos guardadas en formato cuadrícula.
// ignore: camel_case_types
class Photo_guardadas extends StatelessWidget {
  const Photo_guardadas({super.key});

  // Método que construye la interfaz de usuario de la sección de fotos guardadas en formato cuadrícula.
  @override
  Widget build(BuildContext context) {
    return GridView(
      // Configuración de la cuadrícula.
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

      // Lista de elementos en la cuadrícula (en este caso, imágenes guardadas).
      children: [
        Image.asset(
          'assets/images/posts/01.jpg',
        ),
        Image.asset(
          'assets/images/posts/02.jpg',
        ),
        Image.asset(
          'assets/images/posts/03.jpg',
        ),
        Image.asset(
          'assets/images/posts/04.jpg',
        ),
        Image.asset(
          'assets/images/posts/05.jpg',
        ),
        Image.asset(
          'assets/images/posts/06.jpg',
        ),
        Image.asset(
          'assets/images/posts/07.jpg',
        ),
      ],
    );
  }
}
