import 'package:flutter/material.dart';

// Clase que representa una sección de fotos etiquetadas en formato cuadrícula.
// ignore: camel_case_types
class Photo_tag extends StatelessWidget {
  const Photo_tag({super.key});

  // Método que construye la interfaz de usuario de la sección de fotos etiquetadas en formato cuadrícula.
  @override
  Widget build(BuildContext context) {
    return GridView(
      // Configuración de la cuadrícula.
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

      // Lista de elementos en la cuadrícula (en este caso, imágenes etiquetadas).
      children: [
        Image.asset(
          'assets/images/etique/01.jpg',
        ),
        Image.asset(
          'assets/images/etique/02.jpg',
        ),
        Image.asset(
          'assets/images/etique/03.jpg',
        ),
        Image.asset(
          'assets/images/etique/04.jpg',
        ),
        Image.asset(
          'assets/images/etique/05.jpg',
        ),
        Image.asset(
          'assets/images/etique/06.jpg',
        ),
        Image.asset(
          'assets/images/etique/07.jpg',
        ),
        Image.asset(
          'assets/images/etique/08.jpg',
        ),
        Image.asset(
          'assets/images/etique/09.jpg',
        ),
        Image.asset(
          'assets/images/etique/10.jpg',
        ),
      ],
    );
  }
}
