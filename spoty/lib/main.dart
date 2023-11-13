import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white, // Fondo blanco
          iconTheme: const IconThemeData(color: Colors.black), // Iconos en negro
          leading: IconButton(
            icon: const Icon(Icons.menu), // Icono de menú
            onPressed: () {
              // Acción al presionar el icono de menú
            },
          ),
          title: const Text(
            'UDD',
            style: TextStyle(color: Colors.black), // Texto negro
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // Acción al presionar el icono "more_vert"
              },
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0), // 16 pixeles desde el borde izquierdo y 16 desde el derecho
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Recientemente escuchado',
                style: TextStyle(
                  fontSize: 24, // Tamaño de fuente 24
                  fontWeight: FontWeight.bold, // Texto en negrita
                ),
              ),
              const SizedBox(height: 32), // Espacio vertical de 32 píxeles
              SizedBox(
                height: 132,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Scrolleable horizontalmente
                  itemCount: 10, // Cambiado a 8 imágenes
                  itemBuilder: (context, index) {
                    String imageName = '${index + 1}.jpg'; // Nombre de la imagen
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ImageScreen(imageName: imageName),
                          ),
                        );
                      },
                      child: Container(
                        width: 128,
                        height: 96,
                        margin: const EdgeInsets.only(right: 12), // Espacio de 12 píxeles entre las cajas
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16), // Bordes con border radius de 16
                          child: Image.asset('assets/$imageName'), // Carga imágenes desde assets
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageScreen extends StatelessWidget {
  final String imageName;
  final List<String> titles = [
    'Kaleko Urdangak',
    'Brigade Loco',
    'No somos nada',
    'La Polla Records',
    'Kortatu',
    'Kaleko Urdangak',
    'Brigade Loco',
    'No somos nada',
    'La Polla Records',
    'Kortatu',
  ];

  ImageScreen({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    int imageIndex = int.parse(imageName.split('.').first) - 1; // Obtener el índice de la imagen
    String title = titles[imageIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Fondo blanco
        iconTheme: const IconThemeData(color: Colors.black), // Iconos en negro
        title: Text(
          title, // Título correspondiente al índice de la imagen
          style: const TextStyle(color: Colors.black), // Texto negro
        ),
      ),
      body: Center(
        child: Image.asset('assets/$imageName'), // Mostrar la imagen a pantalla completa
      ),
    );
  }
}

