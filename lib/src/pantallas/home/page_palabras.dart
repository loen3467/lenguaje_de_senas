import 'package:flutter/material.dart';


class Palabras extends StatelessWidget {
  const Palabras({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('Traductor'),
      ),
      body: Center(
        child: Text('Contenido del Traductor'),
      ),
    );
}}