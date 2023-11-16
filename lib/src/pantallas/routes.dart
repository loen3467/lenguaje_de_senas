import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pantallas/page_favorite.dart';
import 'package:flutter_application_1/src/pantallas/page_home.dart';
import 'package:flutter_application_1/src/pantallas/page_settings.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Widget> myList =[
      const pagehome(),
      const pagefavorite(),
      const pagesettings(),
    ];
    return myList[index];
  }
}