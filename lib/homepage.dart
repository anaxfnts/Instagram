import 'package:flutter/material.dart';
import '../pages/account.dart';
import '../pages/home.dart';
import '../pages/end.dart';

// Clase que representa la pantalla principal de la aplicación.
class HomePage extends StatefulWidget {
  // Constructor de la clase.
  const HomePage({super.key});

  // Método que crea el estado asociado a esta clase.
  @override
  State<HomePage> createState() => _HomePageState();
}

// Clase que representa el estado de la pantalla principal.
class _HomePageState extends State<HomePage> {
  // Índice de la página actual que se muestra en la barra de navegación inferior.
  int _selectedIndex = 0;

  // Método para cambiar la página actual al tocar un elemento de la barra de navegación inferior.
  void _navigateBottonNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Lista de páginas que se pueden mostrar en la aplicación.
  final List<Widget> _children = [
    const UserHome(),
    const UserAccount(),
    const UserAccount(),
    const UserAccount(),
    const UserEnd(),
  ];

  // Método que construye la interfaz de usuario de la pantalla principal.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cuerpo de la pantalla, muestra la página actual.
      body: _children[_selectedIndex],

      // Barra de navegación inferior.
      bottomNavigationBar: BottomNavigationBar(
        // Índice de la página actual.
        currentIndex: _selectedIndex,

        // Método que se llama al tocar un elemento de la barra de navegación.
        onTap: _navigateBottonNavBar,

        // Tipo de barra de navegación, fijo para evitar cambios en el tamaño de los íconos.
        type: BottomNavigationBarType.fixed,

        // Elementos de la barra de navegación, cada uno representado por un ícono y un texto,
        //que en este caso quiero que esté vacío para que sea lo más similar a la cuenta a recrear.
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: ''),
        ],
      ),
    );
  }
}
