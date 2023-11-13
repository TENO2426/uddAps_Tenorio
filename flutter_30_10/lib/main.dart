import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'items.dart';
import 'package:flutter_30_10/theme.dart';
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
      //darkTheme: MyTheme.darkTheme(),
      home: const SplashScreen(), // Mostrar la pantalla de carga primero
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
/*NO ESTOY USANDO UN APPBAR TRADICIONAL, ES MÓVIL, SE DESPLAZARÁ JUNTO CON EL SCROLL SOBRE LAS PUBLICACIONES.
SLIVERAPP ES OTRA MANERA UTILIZAR UN APPBAR, SE PUEDE REEMPLAZAR TEXTOS POR IMÁGENES
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text( //MANTIENE ELEMENTOS SIMILARES AL APPBAR, SALVO EL LEADING, EN LA ESTRUCTURA TRADICIONAL ES LEADING > TITLE > ACTIONS
                  'Instapp',
                  style: TextStyle( //PUEDE SER IMAGEN, YA SABEMOS CARGAR UNA IMAGEN
                    fontSize: 20,
                  ),
                ),
                actions: [ //TIENE ACTIONS, ICONOS
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.favorite_border_outlined),
                    onPressed: () { //INTERACCIÓN, HARÁ ALGO CON ESTO, DE MOMENTO NADA
                      if (kDebugMode) {
                        print('NO HAGO NADA TODAVÍA, DUMMY1');
                      }
                    },
                  ),
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.offline_bolt_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                       print('NO HAGO NADA TODAVÍA, DUMMY2');
                      }
                    },
                  ),
                ],
                floating: true,
                pinned: false,
                expandedHeight: 80.0,
              ),


              /*ACÁ ESTÁ EL COMPONENTE DE LAS "STORIES", LOS CIRCLE AVATAR QUE PERMITEN NAVEGACIÓN HORIzontal
              TIENE UN CONTAINER COMO HIJO, CON ALTO 80, BLANCO, QUE A SU VEZ TIENE OTRO HIJO LISTVIEW, CON DIRECCIÓN DE SCROLL DERECHA
              CREA CON EL ITEMCOUNT X CANTIDAD DE CIRCLE AVATAR, SE DEBE INTEGRAR IMAGEN. CON PADDING DE 16 ENTRE ELLAS, EL PADDING YA SE ESTUDIÓ.
              EL SLIVER ES UN ELEMENTO QUE ESTÁ AL INTERIOR DE UN OBJETO SCROLLEABLE. EN ESTE CASO EL CUSTOM SCROLLVIEW


              * SliverToBoxAdapter( //
                child: Container( 
                  height: 80,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 16.0 : 8.0),
                        child: const CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.grey,
                        ),
                      );
                    },
                  ),
                ),
              ),ACÁ TERMINA EL SLIVER, PERO EL OBJETO QUE LO CONTIENE ES EL CUSTOMSCROLLVIEW
              *
              *
              *
              *
              *
              */
              SliverToBoxAdapter(
                child: Container( 
                  height: 80,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 16.0 : 8.0),
                        child: const CircleAvatar(
                          radius: 32,
                          backgroundColor: Colors.grey,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SliverList( //PARA CREAR LAS TARJETAS O CARDS QUE SE ESTÁ EN EL ARCHIVO ITEMS.DART Y QUE SE IMPORTA EN LAS PRIMERAS LÍNEAS, SE GENERA UN ENCARGADO DE CREARLAS, DELAGADO, Y GENERA LOS ELEMENTOS, ES OTRA ALTTERNATIVA AL LISTVIEW
                delegate: SliverChildListDelegate(//PRUEBA AGREGAR MÁS CUSTOMCARD, 
                  [
                    createCustomCard(context, 'Grupo 1'),
                    createCustomCard(context, 'Grupo 2'),
                    createCustomCard(context, 'Grupo 3'),
                    createCustomCard(context, 'Grupo 4'),
                    createCustomCard(context, 'Grupo 5'),
                    createCustomCard(context, 'Grupo 6'),
                  ],
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text(
                  'Usuario',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                actions: [
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.favorite_border_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Icono de búsqueda presionado!');
                      }
                    },
                  ),
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.offline_bolt_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Icono de más opciones presionado!');
                      }
                    },
                  ),
                ],
                floating: false,
                pinned: false,
                expandedHeight: 80.0,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
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
                title: const Text(
                  'Llamadas',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                actions: [
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.favorite_border_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Icono de búsqueda presionado!');
                      }
                    },
                  ),
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.offline_bolt_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Icono de más opciones presionado!');
                      }
                    },
                  ),
                ],
                floating: false,
                pinned: false,
                expandedHeight: 80.0,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    llamadasItem(),
                    llamadasItem(),
                    llamadasItem(),
                  ],
                ),
              ),
            ],
          ), //CUSTOM SCROLLVIEW, ACÁ TERMINA EL OBJETO SCROLLEABLE
        ],
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
}Widget createCustomCard(BuildContext context, String groupName) {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 180,
          color: Colors.white,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BottomSheet'),
              ],
            ),
          ),
        );
      },
    );
  }

  return Card(
    elevation: 1,
    margin: const EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
    child: Container(
      height: 460,
      color: Colors.grey,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 72,
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              contentPadding: const EdgeInsets.fromLTRB(2, 4, 8, 4),
              leading: const CircleAvatar(
                backgroundColor: Colors.grey,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Card Uno',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {
                      showBottomSheet(context);
                    },
                    padding: const EdgeInsets.only(top: 12),
                  ),
                ],
              ),
             
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.grey,
                height: 250,
                padding: const EdgeInsets.all(10),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 100,
            child: Container(
              margin: const EdgeInsets.only(top: 12),
              alignment: Alignment.topLeft,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 16),
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                  SizedBox(width: 12),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black,
                  ),
                  SizedBox(width: 12),
                  Icon(
                    Icons.send,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
