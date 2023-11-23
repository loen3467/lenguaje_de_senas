import 'package:flutter/material.dart';

class PageFavorite extends StatefulWidget {
  const PageFavorite({Key? key}) : super(key: key);

  @override
  _PageFavoriteState createState() => _PageFavoriteState();
}

class _PageFavoriteState extends State<PageFavorite> {
  String _selectedCategory = 'Días de la semana';
  List<String> _favoriteImages = [];

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
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _showSavedImages,
              child: Text('Guardados'),
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
        ];
        break;
      case 'Saludos y Despedidas':
        imagePaths = [
          'imagenes/buenos_dias.png',
          'imagenes/hasta_manana.png',
        ];
        break;
      default:
        imagePaths = [];
    }

    return imagePaths.map((path) => FavoriteImage(
      imagePath: path,
      isFavorite: _favoriteImages.contains(path),
      onAddToFavorite: () => _addToFavorites(path),
      onRemoveFromFavorite: () => _removeFromFavorites(path),
    )).toList();
  }

  void _addToFavorites(String imagePath) {
    setState(() {
      _favoriteImages.add(imagePath);
    });
  }

  void _removeFromFavorites(String imagePath) {
    setState(() {
      _favoriteImages.remove(imagePath);
    });
  }

  void _showSavedImages() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Imágenes Guardadas'),
          content: Container(
            width: double.maxFinite,
            child: _favoriteImages.isNotEmpty
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: _favoriteImages.length,
                    itemBuilder: (context, index) {
                      return Image.asset(_favoriteImages[index]);
                    },
                  )
                : Center(
                    child: Text('No hay imágenes guardadas.'),
                  ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }
}

class FavoriteImage extends StatelessWidget {
  final String imagePath;
  final bool isFavorite;
  final VoidCallback onAddToFavorite;
  final VoidCallback onRemoveFromFavorite;

  FavoriteImage({
    required this.imagePath,
    required this.isFavorite,
    required this.onAddToFavorite,
    required this.onRemoveFromFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            width: 300.0,
            height: 300.0,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: _buildOverlayButton(isFavorite ? 'x' : '+', isFavorite ? onRemoveFromFavorite : onAddToFavorite),
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
