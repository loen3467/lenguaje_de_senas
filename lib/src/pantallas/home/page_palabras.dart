import 'package:flutter/material.dart';

class PagePalabras extends StatefulWidget {
  const PagePalabras({Key? key}) : super(key: key);

  @override
  _PagePalabrasState createState() => _PagePalabrasState();
}

class _PagePalabrasState extends State<PagePalabras> {
  List<Map<String, String>> _palabras = [
    // Saludos y Despedidas
    {
      'id': 'buenos dias',
      'url':
          'https://i.pinimg.com/564x/2b/26/cd/2b26cd24b1fc102c47e75fedf2c7ed42.jpg',
      'categoria': 'Saludos y Despedidas'
    },
    {
      'id': 'buenas tardes',
      'url':
          'https://i.pinimg.com/564x/8c/13/01/8c13018632ffc5648ac40623ef45db36.jpg',
      'categoria': 'Saludos y Despedidas'
    },
    {
      'id': 'buenas noches',
      'url':
          'https://i.pinimg.com/564x/18/94/8a/18948a6a5d2a07143b18ef84183865c3.jpg',
      'categoria': 'Saludos y Despedidas'
    },
    {
      'id': 'hola',
      'url':
          'https://i.pinimg.com/564x/c6/20/d2/c620d26a01580b826710131ff59f1bdf.jpg',
      'categoria': 'Saludos y Despedidas'
    },
    {
      'id': 'como estas',
      'url':
          'https://i.pinimg.com/564x/26/b2/36/26b23637143f322378c5cd17dab7ca4a.jpg',
      'categoria': 'Saludos y Despedidas'
    },
    {
      'id': 'como te llamas',
      'url':
          'https://i.pinimg.com/564x/67/12/55/6712556f7bfcf869c37de4a9d958525c.jpg',
      'categoria': 'Saludos y Despedidas'
    },
    {
      'id': 'mucho gusto',
      'url':
          'https://i.pinimg.com/564x/f6/9d/7b/f69d7bf42c4946aa127728ca3c9700fc.jpg',
      'categoria': 'Saludos y Despedidas'
    },
    {
      'id': 'con permiso',
      'url':
          'https://i.pinimg.com/564x/79/d5/d6/79d5d61a771452cf79d4e18b228aea7e.jpg',
      'categoria': 'Saludos y Despedidas'
    },
    {
      'id': 'porfavor',
      'url':
          'https://i.pinimg.com/564x/c1/72/cc/c172cc973a7b235ad21ceaff5c21c773.jpg',
      'categoria': 'Saludos y Despedidas'
    },
    // Agrega más elementos con sus identificadores
    // Materias
    // Materias
    {
      'id': 'biologia',
      'url':
          'https://i.pinimg.com/564x/3c/6c/53/3c6c534493bd11161044e359813bfdb8.jpg',
      'categoria': 'Materias'
    },
    {
      'id': 'fisica',
      'url':
          'https://i.pinimg.com/564x/be/06/09/be0609b996846bd6f9acbd4ea01cebdc.jpg',
      'categoria': 'Materias'
    },
    {
      'id': 'quimica',
      'url':
          'https://i.pinimg.com/564x/e4/59/6e/e4596e8a0780fe08a147ca98580f761c.jpg',
      'categoria': 'Materias'
    },
    {
      'id': 'musica',
      'url':
          'https://i.pinimg.com/564x/58/aa/41/58aa416c36b4f74199e953c277731b5e.jpg',
      'categoria': 'Materias'
    },
    {
      'id': 'artes',
      'url':
          'https://i.pinimg.com/564x/53/9a/64/539a6433d7d7a6dc92713b24c3dba858.jpg',
      'categoria': 'Materias'
    },
    {
      'id': 'matematicas',
      'url':
          'https://i.pinimg.com/564x/08/fa/8c/08fa8cc3936544e3ed9a80a04d1b0d86.jpg',
      'categoria': 'Materias'
    },

    // Estados de Ánimo
    // Estados de Ánimo
    {
      'id': 'contento',
      'url':
          'https://i.pinimg.com/564x/be/f9/35/bef935b3bdac0b219717a880639a3970.jpg',
      'categoria': 'Estados de animo'
    },
    {
      'id': 'asustado',
      'url':
          'https://i.pinimg.com/564x/f6/d5/b2/f6d5b2da58924ee6588ce812f0a447d3.jpg',
      'categoria': 'Estados de animo'
    },
    {
      'id': 'preocupado',
      'url':
          'https://i.pinimg.com/564x/0f/dc/3a/0fdc3a1c44b1d74cb3c206324b994768.jpg',
      'categoria': 'Estados de animo'
    },
    {
      'id': 'enojado',
      'url':
          'https://i.pinimg.com/564x/9f/89/27/9f89278fd002b10a97f4d7297c7f4458.jpg',
      'categoria': 'Estados de animo'
    },
    {
      'id': 'aburrido',
      'url':
          'https://i.pinimg.com/564x/56/a4/6f/56a46fd0e6d5d610969ff6c647c2cafd.jpg',
      'categoria': 'Estados de animo'
    },
    {
      'id': 'triste',
      'url':
          'https://i.pinimg.com/564x/fa/30/19/fa3019b4518e940acbe252987ee2d436.jpg',
      'categoria': 'Estados de animo'
    },

    // Cosas u Objetos
    {
      'id': 'cuaderno',
      'url':
          'https://i.pinimg.com/564x/e8/07/70/e80770938bc5d3673259e6d065b373ec.jpg',
      'categoria': 'Cosas u Objetos'
    },
    {
      'id': 'regla',
      'url':
          'https://i.pinimg.com/564x/89/60/a4/8960a44603f1b66fabb39e4ea92b6d7f.jpg',
      'categoria': 'Cosas u Objetos'
    },
    {
      'id': 'mochila',
      'url':
          'https://i.pinimg.com/564x/59/e4/77/59e4778b5147427048ac34b1204f87c6.jpg',
      'categoria': 'Cosas u Objetos'
    },
    {
      'id': 'mesa',
      'url':
          'https://i.pinimg.com/564x/7e/8d/63/7e8d63f9c27990de05cb3db159f806ff.jpg',
      'categoria': 'Cosas u Objetos'
    },

    // Colores
    {
      'id': 'negro',
      'url':
          'https://i.pinimg.com/564x/4c/89/d4/4c89d4440e03b25b11fc3d49fcc19ec7.jpg',
      'categoria': 'Colores'
    },
    {
      'id': 'blanco',
      'url':
          'https://i.pinimg.com/564x/d9/3a/83/d93a83992efef963d0a7aa0bff8c9ee8.jpg',
      'categoria': 'Colores'
    },
    {
      'id': 'verde',
      'url':
          'https://i.pinimg.com/564x/a6/bb/66/a6bb66dcadab79ba8d8355d146a1679b.jpg',
      'categoria': 'Colores'
    },
    {
      'id': 'azul',
      'url':
          'https://i.pinimg.com/564x/8e/d4/b5/8ed4b505adad6f94cd43eac2df802ecc.jpg',
      'categoria': 'Colores'
    },
    {
      'id': 'gris',
      'url':
          'https://i.pinimg.com/564x/0e/a6/7a/0ea67a3b3efc1916ffef4fb842d3ff0e.jpg',
      'categoria': 'Colores'
    },
    {
      'id': 'morado',
      'url':
          'https://i.pinimg.com/564x/bb/7c/4d/bb7c4d9bb47099c5a098549b6dc49a14.jpg',
      'categoria': 'Colores'
    },
    {
      'id': 'rosado',
      'url':
          'https://i.pinimg.com/564x/56/cf/b9/56cfb9c7ff8050c23a023b51f7875961.jpg',
      'categoria': 'Colores'
    },
    {
      'id': 'amarillo',
      'url':
          'https://i.pinimg.com/564x/bd/82/64/bd8264e72e499f6b53a64ebef37eb940.jpg',
      'categoria': 'Colores'
    },
    {
      'id': 'oro',
      'url':
          'https://i.pinimg.com/564x/49/dd/bd/49ddbd08c672d39ef79dd46f666763ec.jpg',
      'categoria': 'Colores'
    },
  ];

  TextEditingController _searchController = TextEditingController();
  String _selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Palabras',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          _buildCategoryButtons(),
          _buildSearchBar(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _filteredPalabras().length,
              itemBuilder: (context, index) {
                return _buildPalabraCard(_filteredPalabras()[index]['url']!);
              },
            ),
          ),
        ],
      ),
    );
  }

 Widget _buildCategoryButtons() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        _buildCategoryButton('Saludos y Despedidas'),
        SizedBox(width: 10), // Añade espacio entre los botones
        _buildCategoryButton('Materias'),
        SizedBox(width: 10),
        _buildCategoryButton('Estados de animo'),
        SizedBox(width: 10),
        _buildCategoryButton('Cosas u Objetos'),
        SizedBox(width: 10),
        _buildCategoryButton('Colores'),
      ],
    ),
  );
}


  Widget _buildCategoryButton(String category) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedCategory = category;
        });
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.green, // Establecer el color de fondo como verde
      ),
      child: Text(
        category,
        style: TextStyle(
          color: Colors.white, // Establecer el color del texto como blanco
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _searchController,
        onChanged: (value) {
          setState(() {});
        },
        decoration: InputDecoration(
          labelText: 'Buscar',
          suffixIcon: IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              setState(() {
                _searchController.clear();
              });
            },
          ),
        ),
      ),
    );
  }

  List<Map<String, String>> _filteredPalabras() {
    String searchText = _searchController.text.toLowerCase();
    return _palabras
        .where((palabra) =>
            palabra['categoria']!
                .toLowerCase()
                .contains(_selectedCategory.toLowerCase()) &&
            (searchText.isEmpty ||
                palabra['id']!.toLowerCase().contains(searchText)))
        .toList();
  }

  Widget _buildPalabraCard(String imageLink) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3.0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Image.network(
          imageLink,
          fit: BoxFit
              .contain, // Usar BoxFit.contain para mostrar la imagen completa
        ),
      ),
    );
  }
}

class CategoriasSeleccionadas extends StatelessWidget {
  final List<Map<String, String>> palabras;
  final String selectedCategory;

  const CategoriasSeleccionadas({
    Key? key,
    required this.palabras,
    required this.selectedCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCategory),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: palabras.length,
        itemBuilder: (context, index) {
          return _buildPalabraCard(palabras[index]['url']!);
        },
      ),
    );
  }

  Widget _buildPalabraCard(String imageLink) {
    return Card(
      elevation: 3.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Image.network(
        imageLink,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
