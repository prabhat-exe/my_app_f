import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var hello = 'prabhat';
    return Scaffold(
      appBar: AppBar(title: Text("My App"), backgroundColor: Colors.purple),
      body: Center(child: Text("Hello,$hello  ")),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ), // optional background
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
