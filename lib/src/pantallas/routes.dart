import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pantallas/page_favorite.dart';
import 'package:flutter_application_1/src/pantallas/page_home.dart';
import 'package:flutter_application_1/src/pantallas/page_settings.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList =[
      const PageHome(),
      const PageFavorite(favoriteImages: []), // Aquí proporciona una lista vacía o tus imágenes favoritas
      const PageSettings(),
    ];
    return myList[index];
  }
}
