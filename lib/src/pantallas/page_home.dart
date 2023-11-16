import 'package:flutter/material.dart';

class pagehome extends StatelessWidget {
  const pagehome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: (
          Image.asset('imagenes/foto_de_perfil.png')
          Icon(Icons.notifications)
        ),
      ),
    );
  }
}