import 'package:flutter/material.dart';
import 'package:clase_06_11/theme.dart';

  //AHORA LA PANTALLA DE DETALLES ES INDEPENDIENTE
//SE CREA UNA CLASE DETAILSCREENDATA, CON DOS ATRIBUTOS O PARÁMETROS
class DetailScreenData {
  final String itemName;
  final String description;

  DetailScreenData(this.itemName, this.description);
}
Widget buildDetailScreen(BuildContext context, DetailScreenData data) {
  return Scaffold(
    appBar: AppBar(
      title: Text(data.itemName),
    ),
  

    body: Container(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 0), // Agrega un padding para desplazar los textos hacia arriba
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinea el texto a la izquierda
        children: [
          Text(
            'Detalles de ${data.itemName}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Descripción: ${data.description}',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
}

Widget createCustomCard(
  BuildContext context,
  String groupName,
  String imagePath,
  String title,
  String description,
) {
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
    margin: const EdgeInsets.all(10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Container(
      height: 400,
      color: Colors.grey,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget novedadesItem() {
  return ListTile(
    leading: Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: MyTheme.lightTheme().colorScheme.secondary,
        borderRadius: BorderRadius.circular(4),
        image: const DecorationImage(
          image: AssetImage('assets/1.jpeg'), // Reemplaza 'ruta_de_tu_imagen' con la ruta correcta de tu imagen
          fit: BoxFit.cover, // Puedes ajustar el ajuste según tus necesidades
        ),
      ),
    ),
    textColor: MyTheme.lightTheme().colorScheme.tertiaryContainer,
    title: const Text('Bad Guy'),
    subtitle: const Text('Billie Eilish'),
    trailing: const Icon(Icons.more_vert, color: Colors.white),
  );
}

Widget llamadasItem(BuildContext context, String title) {
  const time = '15 de octubre, 12:30';
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => buildDetailScreen(
            context,
            DetailScreenData(title, 'Descripción de $title'),
          ),
        ),
      );
    },
    child: ListTile(
      leading: const CircleAvatar(
        // backgroundColor: MyTheme.lightTheme().colorScheme.onPrimaryContainer,
        backgroundImage: AssetImage('assets/1.jpg'), // Carga la imagen '1.jpg' en el CircleAvatar
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(-1.0, -1.0, 1.0),
            child: const Icon(Icons.arrow_outward, size: 16),
          ),
          const SizedBox(width: 4),
          const Text(time, style: TextStyle(fontSize: 12)),
        ],
      ),
      trailing: const Icon(Icons.call),
    ),
  );
}

