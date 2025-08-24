import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
          alignment: Alignment.center,
          child: const Text('Hello, my name is Prabhat'),
        ),
      ),
    );
  }
}
