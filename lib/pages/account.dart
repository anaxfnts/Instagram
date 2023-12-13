import 'package:flutter/material.dart';
import '../pages/end.dart';
import '../utils/photos_cuad.dart';
import '../utils/photos_shop.dart';
import '../utils/photos_tag.dart';
import '../utils/photos_guardadas.dart';

// Clase que representa la pantalla de la cuenta de usuario.
class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  // Método que construye la interfaz de usuario de la pantalla de la cuenta.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          // Configuración de la barra de aplicaciones.
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Text(
                      'yubal_fm',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 150.0),
                      child: Icon(
                        Icons.person_add,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0.0),
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Cuerpo de la pantalla.
        body: Column(
          children: [
            // Sección de la información del usuario (seguidores, seguidos, publicaciones).
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Sección de la foto de perfil.
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                    ),
                    width: 80,
                    height: 80,
                    alignment: Alignment.center,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/nece/logo.jpg',
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Número de publicaciones, seguidores y seguidos del usuario.
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Número de publicaciones.
                        Flexible(
                          child: Column(
                            children: [
                              Text('948',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              Text('publicacio...',
                                  style: TextStyle(
                                      color: Color.fromRGBO(146, 146, 146, 1))),
                            ],
                          ),
                        ),
                        // Número de seguidores.
                        Flexible(
                          child: Column(
                            children: [
                              Text('429',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              Text('seguidores',
                                  style: TextStyle(
                                      color: Color.fromRGBO(146, 146, 146, 1))),
                            ],
                          ),
                        ),
                        // Número de seguidos.
                        Flexible(
                          child: Column(
                            children: [
                              Text('281',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              Text('seguidos',
                                  style: TextStyle(
                                      color: Color.fromRGBO(146, 146, 146, 1))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Botón "Editar perfil".
            Padding(
              padding:
                  const EdgeInsets.only(left: 100, top: 0, right: 0, bottom: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      width: 270,
                      height: 30,
                      alignment: Alignment.center,
                      child: const Text(
                        'Editar perfil',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Sección de la biografía del usuario.
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nombre del usuario.
                  Text(
                    'Yúbal F.M.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  // Descripción de la biografía.
                  Row(
                    children: [
                      Text(
                        'Me gusta la tecnología y escribir sobre ella, la',
                        style: TextStyle(fontSize: 15.5),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'música y las series, el cine y los videojuegos.',
                        style: TextStyle(fontSize: 15.5),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Phone: Samsung Galaxy S7',
                        style: TextStyle(fontSize: 15.5),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'twitter.com/Yubal_FM',
                      style: TextStyle(
                          color: Color.fromARGB(255, 28, 25, 210),
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),

            // TabBar para navegar entre las secciones de fotos.
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.grey.shade400),
              ),
              child: TabBar(
                unselectedLabelColor: Colors.grey.shade400,
                labelColor: Colors.black,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.black),
                ),
                tabs: const [
                  Tab(
                    icon: Icon(
                      Icons.border_all_sharp,
                      size: 30,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.list,
                      size: 30,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.account_box_outlined,
                      size: 30,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.bookmark_border_rounded,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),

            // Contenido de las pestañas (TabBarView).
            const Expanded(
              child: TabBarView(children: [
                Photo_cuad(),
                Photo_shop(),
                Photo_tag(),
                Photo_guardadas(),
              ]),
            ),
          ],
        ),

        // Menú lateral (endDrawer) con opciones.
        endDrawer: Drawer(
          child: Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
            child: ListView(
              children: [
                // Encabezado del menú.
                const DrawerHeader(
                  child: Center(
                    child: Text(
                      'Instagram',
                      style: TextStyle(fontSize: 40, fontFamily: 'Lobster'),
                    ),
                  ),
                ),
                // Opción de ajustes.
                const ListTile(
                  leading: Icon(Icons.settings_outlined),
                  title: Text(
                    'Ajustes',
                    style: TextStyle(fontSize: 20, fontFamily: 'Nunito'),
                  ),
                ),
                // Opción para salir de la aplicación.
                ListTile(
                  leading: const Icon(Icons.close),
                  title: const Text(
                    'Salir',
                    style: TextStyle(fontSize: 20, fontFamily: 'Nunito'),
                  ),
                  onTap: () {
                    // Navega a la pantalla de fin (UserEnd) al tocar la opción "Salir".
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const UserEnd(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
