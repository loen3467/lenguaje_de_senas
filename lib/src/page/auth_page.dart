import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lenguaje_de_senas_proyecto/main.dart';
import 'package:lenguaje_de_senas_proyecto/src/pantallas/page_login.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?>snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const CircularProgressIndicator();
          }else{
            if(snapshot.hasData){

              return const HomePage();
            }else{

              return  LoginPage();
            }
          }
        },
      ),
    );
  }
}