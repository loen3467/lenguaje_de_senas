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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primer Texto más grande
              Text(
                'Traductor de lenguaje de señas',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center, // Centrar el texto
              ),
              SizedBox(height: 10.0),
              // Segundo Texto
              Text(
                'SingLingo',
                style: TextStyle(fontSize: 18.0),
                textAlign: TextAlign.center, // Centrar el texto
              ),
              SizedBox(height: 20.0),
              // Imagen
              Image.asset(
                'imagenes/imagen_login.png',
                width: 200.0,
                height: 200.0,
              ),
              // Resto del contenido (cuadros de texto y botón)
              Container(
                width: 250.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Correo Electrónico',
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: _login,
                      child: Text('Iniciar Sesión'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Color de fondo verde para el botón
                      ),
                    ),
                     ElevatedButton(
                      onPressed: _login,
                      child: Text('Registrarme'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Color de fondo verde para el botón
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
