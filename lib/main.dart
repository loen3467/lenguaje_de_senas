
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
    return  MaterialApp(
      title: 'Material App',
        home: isUserAuthenticated ? HomePage() : LoginPage(),
      theme: ThemeData.dark(
        useMaterial3: true
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
  int index=0;
  botonesnavegador ?mybnb;

@override
  void initState() {
    // TODO: implement initState
    mybnb = botonesnavegador(currentIndex: (i){
      setState(() {
        index=i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: mybnb,
    body: Routes(index: index),

    );
  }
}
