import 'package:flutter/material.dart';
import '../presentacion/widget/custom_icon.dart';

List<Map<String, dynamic>> list=[
  {
    "image": 'url',
    "title": "Training Plan",
    "color": Colors.blue,
  },
   {
    "image": 'url',
    "title": "Heal Plan",
    "color": Colors.pink,
  },
   {
    "image": 'url',
    "title": "Suplement Plan",
    "color": Colors.blue,
  },
   {
    "image": 'url',
    "title": "Exercise Plan",
    "color": Colors.black,
  },
   {
    "image": 'url',
    "title": "Gym Plan",
    "color": Colors.orange,
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Customicon(),
        ],
        title: const Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Store",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder:(context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: list[index]['color'],
              child: Text('data'),
            ),
          );
        },
      ),
      bottomNavigationBar: 
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(
            Icons.line_axis_outlined,
                      
          ),
        ],
      ),
    );
  }
}

