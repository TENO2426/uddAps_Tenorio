import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

 // ACA SE CAMBIA EL COLOR
theme: FlexThemeData.light(
  scheme: FlexScheme.greenM3,
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
),
darkTheme: FlexThemeData.dark(
  scheme: FlexScheme.greenM3,
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
),  // ACA SE CAMBIA EL COLOR


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
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            if (kDebugMode) {
              print('Icono de menú presionado!');
            }
          },
        ),
        title: Text(
          'Actores Chilenos',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person),
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

                //AQUI AGRGUE UN USUARIO CON IMAGEN
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/harold_1.jpeg'),
                ),    //AQUI AGRGUE UN USUARIO CON IMAGEN


                title: const Text(
                  'Harold',
                ),
                subtitle: const Text('Los héroes del norte'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Seguir a Benjamín Vicuña');
                    }
                  },
                  child: const Text('Seguir'),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Benjamín Vicuña');
                  }
                },
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  child: Text(
                    'D',
                  ),
                ),
                title: const Text(
                  'Daniela Vega',
                ),
                subtitle: const Text('Los héroes del norte'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Seguir a Daniela Vega');
                    }
                  },
                  child: const Text('Seguir'),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Daniela Vega');
                  }
                },
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  child: Text(
                    'B',
                  ),
                ),
                title: const Text(
                  'Blanca Lewin',
                ),
                subtitle: const Text('Los héroes del norte'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Seguir a Blanca Lewin');
                    }
                  },
                  child: const Text('Seguir'),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Blanca Lewin');
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
              icon: const Icon(Icons.add),
              onPressed: () {
                // Agrega la lógica para el botón Add aquí
              },
            ),
            IconButton(
              icon: const Icon(Icons.video_library),
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

