import 'package:flutter/material.dart';

class AbecedarioScreen extends StatefulWidget {
  @override
  _AbecedarioScreenState createState() => _AbecedarioScreenState();
}

class _AbecedarioScreenState extends State<AbecedarioScreen> {
  bool mostrarAbecedario = true;
  TextEditingController searchController = TextEditingController();
  Map<String, String> imagenesAbecedario = {
    'B': 'https://i.pinimg.com/originals/3f/f4/2b/3ff42b7411492ff9ff3ff34fbfd42a72.png',
    'C': 'https://i.pinimg.com/originals/24/4e/54/244e544d6269d429368dacb339386a8e.png',
    'D': 'https://i.pinimg.com/originals/8f/a7/36/8fa736abb3b10087392c9821e566d304.png',
    'E': 'https://i.pinimg.com/originals/73/b3/e8/73b3e8be205befc1631e171b5102df57.png',
    'F': 'https://i.pinimg.com/originals/8c/44/27/8c442703ee1be5fa71fe25fe11ca3447.png',
    'G': 'https://i.pinimg.com/originals/55/bf/1b/55bf1b3cdae4a15e38ad9aca9add8ce1.png',
    'H': 'https://i.pinimg.com/originals/5f/23/f0/5f23f04f12764a42936287e0014c7379.png',
    'I': 'https://i.pinimg.com/originals/92/9c/19/929c19979c7e51caafde027d2cbf02db.png',
    'K': 'https://i.pinimg.com/originals/de/34/3d/de343d01de8d93bd0e5cb13c3832b1ba.png',
    'L': 'https://i.pinimg.com/originals/60/4f/9a/604f9a648c937c42d9e478219b70b344.png',
    'M': 'https://i.pinimg.com/originals/74/ba/34/74ba343f1771921dc4347036f3796d01.png',
    'N': 'https://i.pinimg.com/originals/91/c9/b9/91c9b9866818ba91e8d8b5b6515edc76.png',
    'O': 'https://i.pinimg.com/originals/e7/1d/a9/e71da96046afee645f2f294f1cbca7fd.png',
    'Q': 'https://i.pinimg.com/originals/b7/40/16/b74016baa79aa191915069f131bb3d8f.png',
    'R': 'https://i.pinimg.com/originals/30/66/66/306666c5eabbc2a80258f10bebabafc0.png',
    'S': 'https://i.pinimg.com/originals/65/39/0f/65390f8537957480d629baa093c9fe94.png',
    'T': 'https://i.pinimg.com/originals/37/4b/1b/374b1b69b7b1f478c54ad485a7241e6c.png',
    'V': 'https://i.pinimg.com/originals/10/00/80/100080632e6876c2853c56be06aad89f.png',
    'W': 'https://i.pinimg.com/originals/3b/80/bd/3b80bd599b411ca11964a523c65ab3a7.png',
    'Y': 'https://i.pinimg.com/originals/cd/65/32/cd6532a72e1e5c64a3c882f244d6ea10.png',
    'Z': 'https://i.pinimg.com/originals/34/0f/95/340f950d9a9c8d8936183f3ad42d4bf0.png',

  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            mostrarAbecedario ? 'Abecedario' : 'Números',
            style: TextStyle(color: Colors.white,fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          backgroundColor:
            Colors.green,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (mostrarAbecedario)
                // Mostrar imágenes del abecedario
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          labelText: 'Buscar letra',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          // Filtrar las letras del abecedario según el texto ingresado
                          setState(() {
                            // Utilizar el método 'startsWith' para filtrar las letras
                            imagenesAbecedario = imagenesAbecedario.map((key, value) {
                              return MapEntry(key, value);
                            });
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 16.0),
                    for (var letra in imagenesAbecedario.keys)
                      if (letra.toLowerCase().contains(searchController.text.toLowerCase()))
                        letraImage(letra, imagenesAbecedario[letra]!),
                  ],
                )
              else
                // Mostrar imágenes de números
                Column(
                  children: [
                  Center(
                  child: numeroImage(
                      'NUMEROS EN LENGUAJE DE SEÑAS',
                      'https://i.pinimg.com/564x/6e/f2/61/6ef2616808c17bc39c896c2ad490e29f.jpg',
                ),
        )
  ],
),
              SizedBox(height: 16.0),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    mostrarAbecedario = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: mostrarAbecedario ? Colors.blue : Colors.grey,
                ),
                child: Text('Abecedario'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    mostrarAbecedario = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: mostrarAbecedario ? const Color.fromARGB(255, 33, 243, 131) : Color.fromARGB(255, 33, 243, 131),
                ),
                child: Text('Números',
                style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget letraImage(String letra, String imageUrl) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          width: 180.0,
          height: 180.0,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 16.0),
        Text(
          letra,
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }

 Widget numeroImage(String numero, String imageUrl) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 16.0),
        Text(
          numero,
          style: TextStyle(color: Colors.white, fontSize: 24.0),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }
}
void main() {
  runApp(AbecedarioScreen());
}
