
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pantallas/page_login.dart';
import 'package:flutter_application_1/src/pantallas/routes.dart';
import 'src/boton_navegacion/navegador.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isUserAuthenticated = true; // Cambia a true si el usuario está autenticado
    return MaterialApp(
      title: 'Material App',
      home: isUserAuthenticated ? HomePage() : LoginPage(),
      theme: ThemeData.dark(
        useMaterial3: true,
    ),
  );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  botonesnavegador? mybnb;

  @override
  void initState() {
    mybnb = botonesnavegador(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HANDS-ON'),
        leading: index == 0 // Puedes personalizar esto según tu necesidad
            ? null
            : IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop(); // Pop la última pantalla
                },
              ),
      ),
      bottomNavigationBar: mybnb,
      body: Routes(index: index),
  );
  }}