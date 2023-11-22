import 'package:flutter/material.dart';

class Customicon extends StatelessWidget {
  const Customicon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row (
      children: [
        Stack(
          children: [
            Icon(
              Icons.notifications,
              color: Colors.grey,
              size: 28,
            ),
            Positioned(
              left: 10,
              child: Icon(
                Icons.brightness_1,
                color: Colors.red,
                size: 15,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.person,
            color: Colors.grey,
            size: 28,
          ),
        ),
      ],
    );
  }
}
