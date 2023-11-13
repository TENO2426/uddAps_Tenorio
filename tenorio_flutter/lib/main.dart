  import 'package:flutter/foundation.dart';
  import 'package:flutter/material.dart';
  import 'theme.dart';
  import 'splashscreen.dart';

  void main() => runApp(const MainApp());

  class MainApp extends StatelessWidget {
    const MainApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        theme: MyTheme.lightTheme(),
        home: const SplashScreen(),
      );
    }
  }

  class HomeApp extends StatelessWidget {
    const HomeApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: MyTheme.lightTheme().colorScheme.tertiary,
                    actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                if (kDebugMode) {
                  print('Icono de persona presionado!');
                }
              },
            ),
                      IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                if (kDebugMode) {
                  print('Icono de persona presionado!');
                }
              },
            ),
          ],
                  title: const Text(
                    'Playlist',
                  ),

        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                ListTile(

                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/chiguagua.jpeg'),
                ), 

                  title: const Text(
                    'Bad Guy',
                  ),
                  subtitle: const Text('Billie Eilish'),
                trailing:
                    const Icon(Icons.more_horiz), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 1');
                  }
                },
                ),

                const Divider(),
                ListTile(

                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/pomerania.jpeg'),
                ),  

                  title: const Text(
                    'Pomerania',
                  ),
                  subtitle: const Text('Canino - 1 año'),
                trailing:
                    const Icon(Icons.add), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 1');
                  }
                },
                ),
                const Divider(),

                ListTile(

                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/beagle.jpeg'),
                ), 

                  title: const Text(
                    'Beagle',
                  ),
                  subtitle: const Text('Canino - 3 años'),
                trailing:
                    const Icon(Icons.add), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 1');
                  }
                },
                ),
                const Divider(),

                ListTile(

                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/border.png'),
                ), 

                  title: const Text(
                    'Border Collie',
                  ),
                  subtitle: const Text('Canino - 3 años'),
                trailing:
                    const Icon(Icons.add), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 1');
                  }
                },
                ),
                const Divider(),

                ListTile(

                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/husky.jpeg'),
                ), 

                  title: const Text(
                    'Husky',
                  ),
                  subtitle: const Text('Canino - 1 año'),
                trailing:
                    const Icon(Icons.add), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 1');
                  }
                },
                ),
                const Divider(),                
                
                ListTile(

                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/persa.jpeg'),
                ), 

                  title: const Text(
                    'Persa',
                  ),
                  subtitle: const Text('Felino - 1 Mes'),
                trailing:
                    const Icon(Icons.add), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 1');
                  }
                },
                ),
                const Divider(),                
                
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.cyan,
                    child: Text(
                      'H',
                    ),
                  ),
                  title: const Text(
                    'Himalayo',
                  ),
                  subtitle: const Text('Felino - 1 año'),
                trailing:
                    const Icon(Icons.add), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 1');
                  }
                },
                ),
                const Divider(),          

                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text(
                      'S',
                    ),
                  ),
                  title: const Text(
                    'Siamés',
                  ),
                  subtitle: const Text('Felino - 2 año'),
                 trailing:
                    const Icon(Icons.add), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 1');
                  }
                },
                ),
                const Divider(),   

                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text(
                      'S',
                    ),
                  ),
                  title: const Text(
                    'Siberiano',
                  ),
                  subtitle: const Text('Felino - 2 año'),
                 trailing:
                    const Icon(Icons.add), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 1');
                  }
                },
                ),
                const Divider(),   

                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text(
                      'E',
                    ),
                  ),
                  title: const Text(
                    'Esfinge',
                  ),
                  subtitle: const Text('Felino - 3 año'),
                trailing:
                    const Icon(Icons.add), // Agrega un ícono a la derecha
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Item 1');
                  }
                },
                ),
                const Divider(),

              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  // Agrega la lógica para el botón Home aquí
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Agrega la lógica para el botón Add aquí
                },
              ),
              IconButton(
                icon: const Icon(Icons.library_music),
                onPressed: () {
                  // Agrega la lógica para el botón Video aquí
                },
              ),
            ],
          ),
        ),
      );
    }
  }

