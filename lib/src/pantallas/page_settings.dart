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
            _buildSettingsTile(context, 'Ver Perfil', 'Visualiza tu perfil'),
            _buildSettingsTile(context, 'Editar Contraseña', 'Cambia tu contraseña'),
            _buildSettingsTile(context, 'Configuración', 'Ajustes adicionales'),
            _buildSettingsTile(context, 'Soporte', 'Obtener ayuda'),
            _buildSettingsTile(context, 'Cómo se usa', 'Guía de uso'),
            _buildSettingsTile(context, 'Quiénes somos', 
              '¡Bienvenidos a nuestro espacio donde las manos hablan y la conexión no tiene límites!'
              'En el viaje de la vida, celebramos la diversidad de lenguajes, especialmente aquellos que van más allá de las palabras: el lenguaje de señas.'
              'Aquí, reconocemos a quienes eligen el lenguaje de señas como su forma de expresión. No vemos barreras, vemos oportunidades para construir puentes auténticos.'
              'Cada gesto cuenta una historia que enriquece nuestro entendimiento colectivo.'
              'Así que únete a nosotros en este viaje donde las manos hablan más fuerte que las palabras y donde la comunicación auténtica es la clave para un futuro inclusivo y vibrante para todos. '
              '¡Las manos que hablan construyen un mundo donde la conexión es la estrella del espectáculo!'
            ),
            SizedBox(height: 16.0), // Espacio adicional para colocar tu texto
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsTile(BuildContext context, String title, String description) {
    return ExpansionTile(
      title: Text(title),
      children: [
        ListTile(
          title: Text(description),
          onTap: () {
            // Acción al hacer clic en la opción
            // Puedes navegar a otra pantalla con Navigator
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(title, description),
              ),
            );
          },
        ),
      ],
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String title;
  final String description;

  const SecondScreen(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              style: TextStyle(fontSize: 16.0), // Ajusta según sea necesario
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
      home: const PageSettings(),
    ),
  );
}
