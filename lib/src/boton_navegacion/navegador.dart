import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class BotonesNavegador extends StatefulWidget {
  final Function(int) currentIndex;

  BotonesNavegador({required this.currentIndex});

  @override
  _BotonesNavegadorState createState() => _BotonesNavegadorState();
}

class _BotonesNavegadorState extends State<BotonesNavegador> {
  int _currentIndex = 0;

  @override
Widget build(BuildContext context) {
  return AnimatedBottomNavigationBar(
    icons: const [Icons.home, Icons.favorite, Icons.person],
    activeIndex: _currentIndex,
    gapLocation: GapLocation.none,
    notchSmoothness: NotchSmoothness.softEdge,
    leftCornerRadius: 32,
    rightCornerRadius: 32,
    backgroundColor: Colors.black, // Fondo negro
    activeColor: Colors.green, // Color del ícono activo verde
    splashColor: Colors.green, // Color del efecto de onda al tocar
    onTap: (index) {
      setState(() {
        _currentIndex = index;
        widget.currentIndex(index);
      });
    }, // Nombres de las etiquetas
  );
}

}
