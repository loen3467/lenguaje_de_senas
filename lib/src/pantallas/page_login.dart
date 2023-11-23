import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Función para procesar el inicio de sesión
  void _login() {
    final String email = _emailController.text;
    final String password = _passwordController.text;

    // Agrega aquí la lógica de autenticación, por ejemplo, con Firebase
    // Puedes usar FirebaseAuth u otros métodos de autenticación según tus necesidades

    // Lógica de autenticación aquí

    // Si la autenticación es exitosa, navega a la página principal
    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage());
  }

  // Función para procesar el registro
  void _register() {
    // Agrega aquí la lógica para el registro
    // Puedes navegar a una nueva página de registro o realizar otras acciones necesarias
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Agregar imagen encima de los botones
              Image.asset(
                'imagenes/login/imagen_login.png', // Ruta de la imagen
                width:
                    250.0, // Ajusta el ancho de la imagen según tus necesidades
                height:
                    250.0, // Ajusta la altura de la imagen según tus necesidades
              ),

              SizedBox(height: 20), // Espacio entre la imagen y los botones

              ElevatedButton(
                onPressed: _login,
                child: Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                    fontSize: 18.0, // Tamaño del texto
                    fontWeight: FontWeight.bold, // Grosor del texto
                    color: Colors.white, // Color del texto
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Color de fondo verde para el botón
                  minimumSize: Size(250, 60), // Tamaño mínimo del botón
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _register, // Usar la función de registro
                child: Text(
                  'Registrarme',
                  style: TextStyle(
                    fontSize: 18.0, // Tamaño del texto
                    fontWeight: FontWeight.bold, // Grosor del texto
                    color: Colors.white, // Color del texto
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Color de fondo verde para el botón
                  minimumSize: Size(250, 60), // Tamaño mínimo del botón
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
