import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: SingleChildScrollView( //Permite eventualemnte desplazarse a un punto x en el scroll.
          child: Column( //será una columna vertical, navegamos verticalmente
            children: [
              
            const Divider(//para separar del siguiente container, es horizontal
              height: 20.0, //dos pixeles de alto
              color: Color.fromARGB(255, 255, 255, 255),//color
            ),

            Row( //una fila que tiene dos columnas, separadas por una línea, alto 48 píxeles
                children: [
                  Expanded(//cada expanded es una columna al interior del container, se construye el container en su interior
                    flex: 1, //primera división de la superficier, ROW
                    child: Container(// acá se construye, el contenido de esa superficie previamente formateada.
                      height: 50.0, //con alto de 48 pixeles
                      color: Color.fromARGB(255, 79, 75, 75), 
                    ),
                  ),

                  const SizedBox(width: 4.0), //separador vertical

                  Expanded(
                    flex: 1, //segunda división de la superficie, ROW
                    child: Container(
                      height: 50.0,
                     color: Color.fromARGB(255, 79, 75, 75),  // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separador vertical

                  Expanded(
                    flex: 1, //segunda división de la superficie, ROW
                    child: Container(
                      height: 50.0,
                     color: Color.fromARGB(255, 79, 75, 75),  // Color en formato hexadecimal
                    ),
                  ),
                ],
              ),

              const Divider(//para separar del siguiente container, es horizontal
                height: 4.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),

              const Divider(//para separar del siguiente container, es horizontal
                height: 4.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),

                Container(
                color: Color.fromARGB(255, 111, 125, 133), // Color en formato hexadecimal
                height: 60.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),
            
             const Divider(//para separar del siguiente container, es horizontal
                height: 1.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),

                Container(
                color: Color.fromARGB(255, 111, 125, 133), // Color en formato hexadecimal
                height: 60.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),


              const Divider(//para separar del siguiente container, es horizontal
                height: 1.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),


                Container(
                color: Color.fromARGB(255, 111, 125, 133), // Color en formato hexadecimal
                height: 60.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),
            
             const Divider(//para separar del siguiente container, es horizontal
                height: 1.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),


                Container(
                color: Color.fromARGB(255, 111, 125, 133), // Color en formato hexadecimal
                height: 60.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),
            
             const Divider(//para separar del siguiente container, es horizontal
                height: 1.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),


                Container(
                color: Color.fromARGB(255, 111, 125, 133), // Color en formato hexadecimal
                height: 60.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),
            
             const Divider(//para separar del siguiente container, es horizontal
                height: 1.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),


                Container(
                color: Color.fromARGB(255, 111, 125, 133), // Color en formato hexadecimal
                height: 60.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),
            
             const Divider(//para separar del siguiente container, es horizontal
                height: 1.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),


                Container(
                color: Color.fromARGB(255, 111, 125, 133), // Color en formato hexadecimal
                height: 60.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),
            
             const Divider(//para separar del siguiente container, es horizontal
                height: 1.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),


                Container(
                color: Color.fromARGB(255, 111, 125, 133), // Color en formato hexadecimal
                height: 60.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),
            
             const Divider(//para separar del siguiente container, es horizontal
                height: 1.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),


                Container(
                color: Color.fromARGB(255, 111, 125, 133), // Color en formato hexadecimal
                height: 60.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),
            
             const Divider(//para separar del siguiente container, es horizontal
                height: 1.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),


                Container(
                color: Color.fromARGB(255, 111, 125, 133), // Color en formato hexadecimal
                height: 60.0, //alto
                width: double.infinity, //ancho, al infinito y más allá
              ),
            
             const Divider(//para separar del siguiente container, es horizontal
                height: 1.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),

          
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 0, 4, 0), // Margen izquierdo y derecho para el TextField

                child:      Row( //una fila que tiene dos columnas, separadas por una línea, alto 48 píxeles
                children: [
                  Expanded(//cada expanded es una columna al interior del container, se construye el container en su interior
                    flex: 1, //primera división de la superficier, ROW
                    child: Container(// acá se construye, el contenido de esa superficie previamente formateada.
                      height: 70.0, //con alto de 48 pixeles
                      color: Color.fromARGB(255, 79, 75, 75), // Color en formato hexadecimal
                    ),
                  ),
                ],
              ),
              ),

              ],
          ),
        ),

    bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0), //color de fondo, a mano, luego se puede integrar a flex_color
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 255, 255, 255)), // Icono blanco
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white), // Icono blanco
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music, color: Colors.white), // Icono blanco
              label: 'Library',
            ),
          ],
          selectedItemColor: const Color.fromARGB(255, 255, 255, 255), // Color del texto seleccionado en blanco
          unselectedItemColor: const Color.fromARGB(255, 103, 102, 102), // Color de íconos no seleccionados
        ),

      ),
    );
  }
}

