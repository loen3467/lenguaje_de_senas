import 'package:flutter/material.dart';
import 'package:lenguaje_de_senas_proyecto/src/page/auth_page.dart';
import './src/pantallas/page_login.dart';
import './src/pantallas/routes.dart';
import 'src/boton_navegacion/navegador.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isUserAuthenticated = false; // Cambia a true si el usuario está autenticado
    return  MaterialApp(
      title: 'Material App',
        home: const AuthPage(),
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
  BotonesNavegador ?mybnb;

@override
  void initState() {
    // TODO: implement initState
    mybnb = BotonesNavegador(currentIndex: (i){
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


/*@override
  Widget build(BuildContext context) {
    bool isUserAuthenticated = false; // Cambia a true si el usuario está autenticado
    return  MaterialApp(
      title: 'Material App',
        home: isUserAuthenticated ? HomePage() : LoginPage(),
      theme: ThemeData.dark(
        useMaterial3: true
      ),

    );
  }*/