import 'package:flutter/material.dart';

class PageSettings extends StatelessWidget {
  const PageSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
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
            SizedBox(height: 16.0), // Agregar espacio entre la imagen y los botones
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
            _buildSettingsTile(context, 'Tiempo en Pantalla', 'Consulta el tiempo de uso', () {
              // Acción al hacer clic en el botón de tiempo en pantalla
              print('Tiempo en Pantalla');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TimeOnScreenScreen(),
                ),
              );
            }),
            _buildSettingsTile(context, 'Ayuda y Soporte', 'Obtén información y asistencia', () {
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

  Widget _buildSettingsTile(BuildContext context, String title, String description, VoidCallback onTap) {
    return ExpansionTile(
      title: Text(title),
      children: [
        ListTile(
          title: Text(description),
          onTap: onTap,
        ),
      ],
    );
  }
}

class ProfileDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16.0),
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
            'Correo Electrónico: usuario@gmail.com',
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
            child: Text('Editar'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Acción al hacer clic en el botón de atrás
              Navigator.pop(context);
            },
            child: Text('Atrás'),
          ),
        ],
      ),
    );
  }
}

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Perfil'),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Nombres de Usuario'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Contraseña Actual'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Nueva Contraseña'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Repite Nueva Contraseña'),
          ),
          ElevatedButton(
            onPressed: () {
              // Acción al hacer clic en el botón de guardar cambios
              print('Guardar Cambios');
            },
            child: Text('Guardar Cambios'),
          ),
        ],
      ),
    );
  }
}

class TimeOnScreenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tiempo en Pantalla'),
      ),
      body: Column(
        children: [
          // Aquí puedes agregar elementos para mostrar estadísticas o el tiempo de uso
          Text('Tiempo de uso: 2 horas y 30 minutos'),
        ],
      ),
    );
  }
}

class HelpAndSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayuda y Soporte: Bienvenido a nuestra aplicación de aprendizaje de lenguaje de señas '),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16.0),
          Text(
            'Gracias por elegir nuestra aplicación. Estamos emocionados de acompañarte en tu viaje para aprender el fascinante lenguaje de señas. Esta sección de ayuda está diseñada para proporcionarte la información necesaria para aprovechar al máximo tu experiencia.'
            
            '¡Las manos que hablan construyen un mundo donde la conexión es la estrella del espectáculo!',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 16.0),
          Text(
            'Navegación y Funcionalidades:',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            'Explora las diversas funciones de la aplicación. Utiliza la barra de navegación para acceder fácilmente a diferentes secciones. ¡Estamos aquí para hacer que tu experiencia sea util y eficiente!.',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: const PageSettings(),
    ),
  );
}
