import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  // Función para procesar el inicio de sesión
  signInWithEmailAndPassword() async {
    try {
      setState(() {
        isLoading = true;
      });
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email.text,
        password: _password.text,
      );
      setState(() {
        isLoading = false;
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Ningún usuario encontrado para ese correo electrónico.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Contraseña incorrecta proporcionada para ese usuario.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }
    }
  }

  // Función para crear un nuevo usuario
  signUpWithEmailAndPassword() async {
    try {
      setState(() {
        isLoading = true;
      });
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _email.text,
        password: _password.text,
      );
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Usuario creado con éxito.',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        isLoading = false;
      });
      if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Ya existe un usuario con ese correo electrónico.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(46.0),
          child: Form(
            key: _formKey,
            child: OverflowBar(
              overflowSpacing: 20,
              children: [
                // Container para centrar la imagen y agregar bordes
                Padding(
                  padding: EdgeInsets.only(left: 35.0),
                  child: Container(
                    width: 250.0,
                    height: 300.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color.fromARGB(255, 44, 141, 70),
                        width: 2.0,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'SignUp',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Imagen con bordes
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.network(
                            'https://i.pinimg.com/originals/7a/05/45/7a0545d4ed9e1b78d1665be1bef6953d.png',
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                TextFormField(
                  controller: _email,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Email está vacío';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(hintText: "Email"),
                ),
                // Campo de Contraseña
                TextFormField(
                  controller: _password,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'La contraseña está vacía';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(hintText: "Contraseña"),
                  obscureText: true, // Hace que el texto sea oculto
                ),
                // Botón de Login
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        signInWithEmailAndPassword();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                    ),
                    child: isLoading
                        ? Container(
                            child: const CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : const Text("Login"),
                  ),
                ),
                // Botón de SignUp
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        signUpWithEmailAndPassword();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                    ),
                    child: isLoading
                        ? Container(
                            child: const CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : const Text("SignUp"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
