import 'package:flutter/material.dart';
class pagefavorite extends StatelessWidget {
  const pagefavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children:[ 
            SizedBox(height: 80.0),
            Text(
                'Favoritos',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center, // Centrar el texto
              ),
             SizedBox(height: 40.0),
            Image.asset('imagenes/buenos_dias.png'),
            SizedBox(height: 20.0),
            Image.asset('imagenes/hasta_manana.png'),
            SizedBox(height: 20.0),
          ],
        ),
      ),
      //child: Text('Favoritos'),
      
    );
  }
}