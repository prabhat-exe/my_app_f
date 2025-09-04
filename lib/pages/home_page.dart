import 'package:flutter/material.dart';
import 'package:fprojects/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var hello = 'prabhat';
    return Scaffold(
      appBar: AppBar(title: Text("My App")),
      body: Center(child: Text("Hello,$hello  ")),
      drawer: My_Drawer(),
    );
  }
}
