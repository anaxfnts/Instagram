import 'package:flutter/material.dart';

// Clase que representa una sección de fotos en formato cuadrícula.
// ignore: camel_case_types
class Photo_shop extends StatelessWidget {
  const Photo_shop({super.key});

  // Método que construye la interfaz de usuario de la sección de fotos en formato cuadrícula.
  @override
  Widget build(BuildContext context) {
    return GridView(
      // Configuración de la cuadrícula.
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

      // Lista de elementos en la cuadrícula (en este caso, imágenes).
      children: [
        Image.asset(
          'assets/images/shops/01.jpg',
        ),
        Image.asset(
          'assets/images/shops/02.jpg',
        ),
        Image.asset(
          'assets/images/shops/03.jpg',
        ),
        Image.asset(
          'assets/images/shops/04.jpg',
        ),
        Image.asset(
          'assets/images/shops/05.jpg',
        ),
        Image.asset(
          'assets/images/shops/06.jpg',
        ),
        Image.asset(
          'assets/images/shops/07.jpg',
        ),
      ],
    );
  }
}
