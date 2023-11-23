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
              // ... (Código previo)

              ElevatedButton(
                onPressed: _login,
                child: Text('Iniciar Sesión'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Color de fondo verde para el botón
                ),
              ),
              ElevatedButton(
                onPressed: _register, // Usar la función de registro
                child: Text('Registrarme'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Color de fondo verde para el botón
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
