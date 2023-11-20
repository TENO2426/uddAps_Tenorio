import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'items.dart';
import 'theme.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MainApp());
}

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

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  late PageController _pageController;
  int _currentPage = 0;
  final List<String> _screenTitles = ["Inicio", "Búsqueda", "Your library"];
  final List<IconData> _screenIcons = [
    Icons.home,
    Icons.search,
    Icons.library_music
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToPage(int index) {
    setState(() {
      _currentPage = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.lightTheme().colorScheme.tertiary,
      body: PageView(
        controller: _pageController,
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: MyTheme.lightTheme().colorScheme.tertiary,
                leading: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16.0),
                      child: CircleAvatar(
                        radius: 20.0,
                        backgroundColor: MyTheme.lightTheme()
                            .colorScheme
                            .primary, // Cambia a color primario
                        child: const Text(
                          'F',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 24.0,
                    ),
                    Chip(
                      label: Text(
                        'Todas',
                        style: TextStyle(
                          color: MyTheme.lightTheme().colorScheme.secondary,
                        ),
                      ),
                      backgroundColor: MyTheme.lightTheme().colorScheme.primary,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Chip(
                      label: Text(
                        'Música',
                        style: TextStyle(
                          color: MyTheme.lightTheme()
                              .colorScheme
                              .tertiaryContainer,
                        ),
                      ),
                      backgroundColor:
                          MyTheme.lightTheme().colorScheme.secondaryContainer,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Chip(
                      label: Text(
                        'Podcasts',
                        style: TextStyle(
                          color: MyTheme.lightTheme()
                              .colorScheme
                              .tertiaryContainer,
                        ),
                      ),
                      backgroundColor:
                          MyTheme.lightTheme().colorScheme.secondaryContainer,
                    ),
                  ],
                ),
                floating: true,
                pinned: false,
                expandedHeight: 80.0,
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return InkWell(
                        onTap: () {
                          // Lógica para la navegación
                          _navigateToPage(1);
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            color: MyTheme.lightTheme()
                                .colorScheme
                                .secondaryContainer,
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/${index + 1}.jpeg',
                                  width: 48.0,
                                  height: 48.0,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 16.0),
                                Text(
                                  'Playlist $index',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: MyTheme.lightTheme()
                                        .colorScheme
                                        .secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    childCount: 5,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/2.jpeg"),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'More like',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: MyTheme.lightTheme()
                                      .colorScheme
                                      .tertiaryContainer,
                                ),
                              ),
                              const Text(
                                'Quevedo',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      color: MyTheme.lightTheme().colorScheme.tertiary,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          final imageNames = [
                            '1.jpeg',
                            '2.jpeg',
                            '3.jpeg',
                            '4.jpeg',
                            '5.jpeg',
                          ];
                          return Container(
                            width: 200, // Ancho de la imagen
                            height: 200, // Altura de la imagen
                            margin:
                                EdgeInsets.only(left: index == 0 ? 16.0 : 8.0),
                            child: GestureDetector(
                              onTap: () {
                                // Lógica cuando se presiona una imagen
                                print(
                                    'Imagen presionada: ${imageNames[index]}');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/${imageNames[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/2.jpeg"),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'More like',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: MyTheme.lightTheme()
                                      .colorScheme
                                      .tertiaryContainer,
                                ),
                              ),
                              const Text(
                                'Quevedo',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      color: MyTheme.lightTheme().colorScheme.tertiary,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          final imageNames = [
                            '1.jpeg',
                            '2.jpeg',
                            '3.jpeg',
                            '4.jpeg',
                            '5.jpeg',
                          ];
                          return Container(
                            width: 200, // Ancho de la imagen
                            height: 200, // Altura de la imagen
                            margin:
                                EdgeInsets.only(left: index == 0 ? 16.0 : 8.0),
                            child: GestureDetector(
                              onTap: () {
                                // Lógica cuando se presiona una imagen
                                print(
                                    'Imagen presionada: ${imageNames[index]}');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/${imageNames[index]}'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: const Color(0xFF1C3C47),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    _navigateToPage(0);
                    print('Botón de retroceso presionado!');
                  },
                ),
                title: const Center(
                  child: Text(
                    'Playlist',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                floating: false,
                pinned: false,
                expandedHeight: 80.0,
                flexibleSpace: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: FloatingActionButton(
                      backgroundColor: MyTheme.lightTheme().colorScheme.primary,
                      onPressed: () {
                        // Lógica cuando se presiona el FAB
                        print('FAB presionado!');
                      },
                      child: const Icon(Icons.add),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    GestureDetector(
                      onTap: () {
                        _navigateToPage(2);
                      },
                      child: novedadesItem(),
                    ),
                    GestureDetector(
                      onTap: () {
                        _navigateToPage(2);
                      },
                      child: novedadesItem(),
                    ),
                    GestureDetector(
                      onTap: () {
                        _navigateToPage(2);
                      },
                      child: novedadesItem(),
                    ),
                    GestureDetector(
                      onTap: () {
                        _navigateToPage(2);
                      },
                      child: novedadesItem(),
                    ),
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                  ],
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: MyTheme.lightTheme().colorScheme.tertiary,
                leading: IconButton(
                  icon: const Icon(Icons.expand_more, color: Colors.white),
                  onPressed: () {
                    _navigateToPage(1);
                    print('Botón de minimizado presionado!');
                  },
                ),
                title: const Center(
                  child: Text(
                    'Playlist',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                floating: false,
                pinned: false,
                expandedHeight: 80.0,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    createCustomCard(
                      context,
                      'Grupo 1',
                      'assets/1.jpeg',
                      'Cancion',
                      'playlist',
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 60.0,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      16.0), // Ajusta el valor según sea necesario
                              child: Text(
                                'Bad Guy',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 4.0), //separador vertical

                        Padding(
                          padding: const EdgeInsets.only(
                              left:
                                  16.0), // Ajusta el valor según sea necesario
                          child: IconButton(
                            icon: Icon(Icons.check_circle,
                                color:
                                    MyTheme.lightTheme().colorScheme.primary),
                            onPressed: () {
                              // Tu lógica al presionar el botón de reproducción
                            },
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    Container(
                        height: 30.0, //alto
                        width: double.infinity, //ancho, al infinito y más allá
                        child: Image.asset(
                          'assets/7.jpeg',
                          fit: BoxFit.cover,
                        )),
                    const Divider(//color
                        ),
                    Row(
                      children: [
                        Expanded(
                          //cada expanded es una columna al interior del container, se construye el container en su interior
                          child: Container(
                            // acá se construye, el contenido de esa superficie previamente formateada.
                            height: 70.0, //con alto de 48 pixeles
                            child: const Icon(Icons.shuffle,
                                color: Colors.white, // Color icono
                                size: 35.0 // Tamañno icono
                                ),
                          ),
                        ),

                        const SizedBox(width: 4.0), //separador vertical

                        Expanded(
                          flex: 1, //segunda división de la superficie, ROW
                          child: Container(
                            height: 70.0,
                            child: const Icon(Icons.skip_previous,
                                color: Colors.white, // Color icono
                                size: 35.0 // Tamañno icono
                                ),
                          ),
                        ),

                        const SizedBox(width: 4.0), //separador vertical

                        Expanded(
                          flex: 1, //segunda división de la superficie, ROW
                          child: Container(
                            height: 70.0,
                            child: const Icon(Icons.play_circle_fill_outlined,
                                color: Colors.white, // Color icono
                                size: 70.0 // Tamañno icono
                                ),
                          ),
                        ),

                        const SizedBox(width: 4.0), //separador vertical

                        Expanded(
                          flex: 1, //segunda división de la superficie, ROW
                          child: Container(
                            height: 70.0,
                            child: const Icon(Icons.skip_next,
                                color: Colors.white, // Color icono
                                size: 35.0 // Tamañno icono
                                ),
                          ),
                        ),

                        const SizedBox(width: 4.0), //separador vertical

                        Expanded(
                          flex: 1, //segunda división de la superficie, ROW
                          child: Container(
                            height: 70.0,
                            child: const Icon(Icons.repeat,
                                color: Colors.white, // Color icono
                                size: 35.0 // Tamañno icono
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          /* POR CADA PANTALLA NUEVA O NAVEGACIÓN SE DEBE AGREGAR UN NUEVO CustomScrollVIew, EVIDENTEMENTE LOS MIEMBROS VIENEN DE ITEMS.DART
          Habría que crear nuevos items u objetos
          ESTE ES UN CUSTOMSCROLLVIEW NUEVO, CON EL TÍTULO COORDINADORES*/
        ],
        onPageChanged: (index) {
          _navigateToPage(index);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyTheme.lightTheme().colorScheme.tertiary,
        currentIndex: _currentPage,
        onTap: _navigateToPage,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: MyTheme.lightTheme()
            .colorScheme
            .secondary, // Cambia esto al color que desees
        items: List.generate(
          _screenTitles.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(_screenIcons[index]),
            label: _screenTitles[index],
          ),
        ),
      ),
    );
  }
}
