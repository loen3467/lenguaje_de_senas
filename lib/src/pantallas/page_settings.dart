import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class PageSettings extends StatelessWidget {
  PageSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Configuración',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            },
            icon: const Icon(Icons.logout), // Cambié el ícono a cerrar sesión
          ),
        ],
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60.0),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('imagenes/nuevo_perfil.jfif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Botón para cambiar la foto de perfil
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: FloatingActionButton(
                    onPressed: () {
                      // Acción al hacer clic en el botón de cambiar foto de perfil
                      print('Cambiar foto de perfil');
                    },
                    child: Icon(Icons.add),
                  ),
                ),
              ],
            ),
            SizedBox(height: 46.0),
            _buildSettingsTile(
              context,
              'Cuenta',
              'Visualiza tus datos personales',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileDetailsScreen(),
                  ),
                );
              },
            ),
            _buildSettingsTile(
                context, 'Tiempo en Pantalla', 'Consulta el tiempo de uso', () {
              // Acción al hacer clic en el botón de tiempo en pantalla
              print('Tiempo en Pantalla');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            }),
            _buildSettingsTile(
                context, 'Ayuda y Soporte', 'Obtén información y asistencia',
                () {
              // Acción al hacer clic en el botón de ayuda y soporte
              print('Ayuda y Soporte');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HelpAndSupportScreen(),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsTile(
    BuildContext context,
    String title,
    String subtitle,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: onTap,
      ),
    );
  }
}

class ProfileDetailsScreen extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perfil',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        backgroundColor:
            Colors.green, // Cambia el color de fondo de la barra de navegación
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container con la imagen centrada
            Container(
              width: 100.0, // Ajusta según sea necesario
              height: 100.0, // Ajusta según sea necesario
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('imagenes/nuevo_perfil.jfif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nombre del Usuario',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              user!.email.toString(),
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Acción al hacer clic en el botón de editar
                print('Editar');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfileScreen(),
                  ),
                );
              },
              child: Text(
                'Editar',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary:
                    Colors.green, // Establecer el color de fondo como verde
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Atrás',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary:
                    Colors.green, // Establecer el color de fondo como verde
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditProfileScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _currentPassword = TextEditingController();
  final TextEditingController _newPassword = TextEditingController();

  void changePassword() async {
    try {
      if (_formKey.currentState!.validate()) {
        // Obtener credenciales de autenticación
        AuthCredential credential = EmailAuthProvider.credential(
          email: FirebaseAuth.instance.currentUser!.email!,
          password: _currentPassword.text,
        );

        // Reautenticar al usuario antes de cambiar la contraseña
        await FirebaseAuth.instance.currentUser
            ?.reauthenticateWithCredential(credential);

        // Cambiar la contraseña
        await FirebaseAuth.instance.currentUser
            ?.updatePassword(_newPassword.text);

        print('Contraseña actualizada con éxito');
      }
    } on FirebaseAuthException catch (e) {
      print('Error al cambiar la contraseña: $e');
    } catch (e) {
      print('Error inesperado: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cambiar contraseña',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        backgroundColor:
            Colors.green, // Cambia el color de fondo de la barra de navegación
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(46.0),
          child: Column(
            children: [
              SizedBox(height: 30.0),
              Image.network(
                'https://i.pinimg.com/originals/b7/7d/dd/b77ddd02c74f44ecb52e5ba48eeecc7d.png',
                height: 200.0, // Ajusta según sea necesario
                width: 200.0, // Ajusta según sea necesario
                fit: BoxFit.cover,
              ),
              SizedBox(height: 70.0),
              TextFormField(
                controller: _currentPassword,
                decoration: InputDecoration(
                  labelText: 'Contraseña Actual',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa tu contraseña actual';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _newPassword,
                decoration: InputDecoration(
                  labelText: 'Nueva Contraseña',
                  labelStyle: TextStyle(color: Colors.white),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa una nueva contraseña';
                  }
                  return null;
                },
              ),
              SizedBox(height: 46.0),
              ElevatedButton(
                onPressed: () {
                  changePassword();
                },
                child: Text(
                  'Cambiar Contraseña',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary:
                      Colors.green, // Establecer el color de fondo como verde
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// dashboard.dart
class TimeTracker {
  static int elapsedTimeInSeconds = 0;
  static int updateIntervalInSeconds = 1;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tiempo acumulado en la aplicación',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors
              .green, // Cambia el color de fondo de la barra de navegación
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Tiempo acumulado: ${TimeTracker.elapsedTimeInSeconds} segundos'),
              // Agrega otros widgets de tu aplicación aquí
            ],
          ),
        ),
      ),
    );
  }
}

class HelpAndSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ayuda y Soporte',
          style: TextStyle(fontSize: 18.0),
        ),
        backgroundColor:
            Colors.green, // Cambia el color de fondo de la barra de navegación
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16.0),
            Text(
              '¡Bienvenido a nuestra aplicación de aprendizaje de lenguaje de señas!',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Gracias por elegir nuestra aplicación. Estamos emocionados de acompañarte en tu viaje para aprender el fascinante lenguaje de señas. Esta sección de ayuda está diseñada para proporcionarte la información necesaria para aprovechar al máximo tu experiencia.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              '¡Las manos que hablan construyen un mundo donde la conexión es la estrella del espectáculo!',
              style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 16.0),
            Divider(
                color:
                    Colors.grey), // Línea divisoria para mejorar la legibilidad
            SizedBox(height: 16.0),
            Text(
              'Navegación y Funcionalidades:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Explora las diversas funciones de la aplicación. Utiliza la barra de navegación para acceder fácilmente a diferentes secciones. ¡Estamos aquí para hacer que tu experiencia sea útil y eficiente!.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: PageSettings(),
    ),
  );
}
