import 'package:flutter/material.dart';
import './home/page_palabras.dart';
import './home/page_abecedario.dart';
import '../pantallas/home/pade_traductor.dart';
class PageHome extends StatelessWidget {
  PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bienvenido usuario',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        backgroundColor:
            Colors.green, // Cambia el color de fondo de la barra de navegación
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50.0),
              SizedBox(
                width: 180.0,
                height: 180.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AbecedarioScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.all(10),
                    elevation: 0,
                    primary: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'imagenes/home/abecedario.jpeg',
                        width: 100.0,
                        height: 100.0,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Abecedario',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 180.0,
                height: 180.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PagePalabras()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.all(10),
                    elevation: 0,
                    primary: Colors.green,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'imagenes/home/palabras_recurrentes.jpeg',
                        width: 100.0,
                        height: 100.0,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Palabras Cotidianas',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30), 
              SizedBox(
                width: 180.0,
                height: 180.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TraductorScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.all(10),
                    elevation: 0,
                    primary: Colors.brown,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'imagenes/home/palabras_recurrentes.jpeg',
                        width: 100.0,
                        height: 100.0,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Traductor',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),      
            ],
          ),
        ),
      ),
    );
  }
}

