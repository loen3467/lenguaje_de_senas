import 'package:flutter/material.dart';
import '../pantallas/page_favorite.dart';
import '../pantallas/page_home.dart';
import '../pantallas/page_settings.dart';
class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList =[
       PageHome(),
      const PageFavorite(),
       PageSettings(),
    ];
    return myList[index];
  }
}
