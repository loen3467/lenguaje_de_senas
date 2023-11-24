import 'package:flutter/material.dart';

class Palabras extends StatelessWidget {
  const Palabras({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Traductor'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Vuelve a la pantalla anterior
          },
        ),
      ),
      body: Center(
        child: Text('Contenido del Traductor'),
      ),
    );
  }
}
