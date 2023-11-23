import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pantallas/routes.dart';
import 'src/boton_navegacion/navegador.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import './src/features/app/splash_screen/splash_screen.dart';
import './src/features/user_auth/firebase_auth_implementation/presentation/pages/login_page.dart';
import './src/features/user_auth/firebase_auth_implementation/presentation/pages/sign_up_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isUserAuthenticated =
        false; // Cambia a true si el usuario está autenticado
    return MaterialApp(
      title: 'Material App',
      home: isUserAuthenticated ? HomePage() : LoginPage(),
      theme: ThemeData.dark(useMaterial3: true),
    );
  }
}*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: SignUpPage(),
        ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
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
    // TODO: implement initState
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
      bottomNavigationBar: mybnb,
      body: Routes(index: index),
    );
  }
}
