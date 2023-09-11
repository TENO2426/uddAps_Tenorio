  import 'package:flutter/foundation.dart';
  import 'package:flutter/material.dart';
  import 'package:flex_color_scheme/flex_color_scheme.dart';

  void main() => runApp(const MainApp());

  class MainApp extends StatelessWidget {
    const MainApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
  // Theme config for FlexColorScheme version 7.3.x. Make sure you use
  // same or higher package version, but still same major version. If you
  // use a lower package version, some properties may not be supported.
  // In that case remove them after copying this theme to your app.
  theme: FlexThemeData.light(
    scheme: FlexScheme.aquaBlue,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 7,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      blendOnColors: false,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      useInputDecoratorThemeInDialogs: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    // To use the Playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  ),
  darkTheme: FlexThemeData.dark(
    scheme: FlexScheme.aquaBlue,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 13,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      useTextTheme: true,
      useM2StyleDividerInM3: true,
      useInputDecoratorThemeInDialogs: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    // To use the Playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  ),
  // If you do not have a themeMode switch, uncomment this line
  // to let the device system mode control the theme mode:
  // themeMode: ThemeMode.system,

        home: const HomeApp(),
      );
    }
  }

  class HomeApp extends StatelessWidget {
    const HomeApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Tenorio',
            style: Theme.of(context).textTheme.titleLarge,
          ),
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
                    'Chiguagua',
                  ),
                  subtitle: const Text('Canino - 2 años'),
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
                icon: const Icon(Icons.shopping_cart),
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

