import 'package:flutter/material.dart';

class PageFavorite extends StatefulWidget {
  const PageFavorite({Key? key}) : super(key: key);

  @override
  _PageFavoriteState createState() => _PageFavoriteState();
}

class _PageFavoriteState extends State<PageFavorite> {
  String _selectedCategory = 'Días de la semana';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80.0),
            Text(
              'Favoritos',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCategoryButton('Días de la semana'),
                _buildCategoryButton('Saludos y Despedidas'),
              ],
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _getImagesByCategory(_selectedCategory),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String category) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedCategory = category;
        });
      },
      child: Text(category),
    );
  }

  List<Widget> _getImagesByCategory(String category) {
    List<String> imagePaths = [];

    switch (category) {
      case 'Días de la semana':
        imagePaths = [
          'imagenes/lunes.jfif',
          'imagenes/martes.jfif',
          'imagenes/miercoles.jfif',
          'imagenes/jueves.jfif',
          'imagenes/viernes.jfif',
          'imagenes/sabado.jfif',
          'imagenes/domingo.jfif',
          // Agrega más imágenes de días de la semana
        ];
        break;
      case 'Saludos y Despedidas':
        imagePaths = [
          'imagenes/buenos_dias.png',
          'imagenes/hasta_manana.png',
          // Agrega más imágenes de saludos y despedidas
        ];
        break;
      default:
        imagePaths = [];
    }

    return imagePaths.map((path) => FavoriteImage(path)).toList();
  }
}

class FavoriteImage extends StatelessWidget {
  final String imagePath;

  FavoriteImage(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            width: 300.0, // Ajusta el ancho según tus necesidades
            height: 300.0, // Ajusta la altura según tus necesidades
          ),
          Positioned(
            top: 0,
            right: 0,
            child: _buildOverlayButton('+', () {
              // Acción al hacer clic en el botón de añadir
              print('Añadir imagen: $imagePath');
            }),
          ),
          Positioned(
            top: 0,
            right: 30,
            child: _buildOverlayButton('x', () {
              // Acción al hacer clic en el botón de quitar
              print('Quitar imagen: $imagePath');
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildOverlayButton(String text, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.black.withOpacity(0.5),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: PageFavorite(),
      ),
    ),
  );
}
