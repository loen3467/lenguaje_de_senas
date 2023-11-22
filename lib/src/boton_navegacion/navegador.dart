import 'package:flutter/material.dart';

class botonesnavegador extends StatefulWidget {
  final Function currentIndex;
  const botonesnavegador({super.key,required this.currentIndex});

  @override
  State<botonesnavegador> createState() => _botonesnavegadorState();
}

class _botonesnavegadorState extends State<botonesnavegador> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i){
        setState(() {
          index=i;
          widget.currentIndex(i);
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      iconSize: 25.0,
      selectedFontSize: 14.0,
      unselectedFontSize: 12.0,
      items: const[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Inicio'
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'Favoritos'
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Configuracion'
        ),
    ]);
  }
}

