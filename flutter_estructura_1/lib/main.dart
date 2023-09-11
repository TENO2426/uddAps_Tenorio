import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            if (kDebugMode) {
              print('Icono de menú presionado!');
            }
          },
        ),
        title: const Text('PARC'),
        actions: <Widget>[
          PopupMenuButton<String>(
            icon: const Icon(Icons.account_circle),
            offset: const Offset(0, 50),
            onSelected: (String result) {
              if (kDebugMode) {
                print('Opción seleccionada: $result');
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[],
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/engelbart.jpg'), // Agrega 'assets/' aquí
                ),
                title: const Text('Douglas Engelbart'),
                subtitle: const Text('Inventor del mouse'),
                trailing:
                    const Icon(Icons.more_vert), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 1');
                  }
                },
              ),
              const Divider(),
            ],
          ),
          Column(
            children: <Widget>[
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/kay.jpg'), // Agrega 'assets/' aquí
                ),
                title: const Text('Alan Kay'),
                subtitle: const Text('Creador de la UI moderna'),
                trailing:
                    const Icon(Icons.more_vert), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 2');
                  }
                },
              ),
              const Divider(),
            ],
          ),
          Column(
            children: <Widget>[
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/manovich.png'), // Agrega 'assets/' aquí
                ),
                title: const Text('Lev Manovich'),
                subtitle: const Text('El lenguaje de los nuevos medios'),
                trailing:
                    const Icon(Icons.more_vert), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 2');
                  }
                },
              ),
              const Divider(),
            ],
          ),

          Column(
            children: <Widget>[
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/sutherland.jpeg'), // Agrega 'assets/' aquí
                ),
                title: const Text('Ivan Sutherland'),
                subtitle:
                    const Text('Creador de la interfaz gráfica de usuario'),
                trailing:
                    const Icon(Icons.more_vert), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 3');
                  }
                },
              ),
              const Divider(),
            ],
          ),
          // Repite desde column para cada elemento de la lista
          // ...
        ],
      ),
    );
  }
}

