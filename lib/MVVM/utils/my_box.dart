import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 10,
        width: 220,
        color: Colors.amber,
      ),
    );
  }
}