import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('imagenes/foto_de_perfil.png'),
            Icon(Icons.notifications),
          ],
        ),
      ),
    );
  }
}
