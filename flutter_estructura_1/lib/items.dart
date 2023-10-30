import 'package:flutter/material.dart';
import 'package:flutter_estructura_1/theme.dart';

Widget beethovenListItem() {
  const time = '13:02 PM'; // Cambia la hora aquí
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: MyTheme.lightTheme().colorScheme.primary,
    ),
    title: const Text('Beethoven'),
    trailing: const Text(
      time,
      style: TextStyle(
        fontSize: 8, // Establece el tamaño de fuente a 8
      ),
    ),
  );
}

Widget chopinListItem() {
  const time = '14:30 PM'; // Cambia la hora aquí
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: MyTheme.lightTheme().colorScheme.primary,
    ),
    title: const Text('Chopin'),
    trailing: const Text(
      time,
      style: TextStyle(
        fontSize: 8, // Establece el tamaño de fuente a 8
      ),
    ),
  );
}

Widget lisztListItem() {
  const time = '15:45 PM'; // Cambia la hora aquí
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: MyTheme.lightTheme().colorScheme.primary,
    ),
    title: const Text('Liszt'),
    trailing: const Text(
      time,
      style: TextStyle(
        fontSize: 8, // Establece el tamaño de fuente a 8
      ),
    ),
  );
}

Widget groupItem() {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: MyTheme.lightTheme().colorScheme.primary,
    ),
    title: const Text('Grupo 1'),
    subtitle: const Text('Hoy, 10:15 AM'),
    trailing: const Icon(Icons.more_vert),
  );
}

Widget novedadesItem() {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: MyTheme.lightTheme().colorScheme.primary,
    ),
    title: const Text('Actualizacion'),
    subtitle: const Text('Hoy, 10:15 AM'),
    trailing: const Icon(Icons.more_vert),
  );
}
Widget llamadasItem() {
  const time = '15 de octubre, 12:30 ';
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: MyTheme.lightTheme().colorScheme.primary,
    ),
    title: const Text('Mamá'),
    subtitle: Row(
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()..scale(-1.0, -1.0, 1.0),//acá giréla flecha
          child: const Icon(Icons.arrow_outward, size: 16),
        ),
        const SizedBox(width: 4),
        const Text(time, style: TextStyle(fontSize: 12)),
      ],
    ),
    trailing: const Icon(Icons.call),
  );
}

Widget createDetailScreen(BuildContext context, String itemName) {
  return Scaffold(
    appBar: AppBar(
      title: Text(itemName), // Establece el nombre del elemento en el AppBar
    ),
    body: Center(
      child: Text('Detalles de $itemName'), // Personaliza el contenido de la pantalla de detalles
    ),
  );
}