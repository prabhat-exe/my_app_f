import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var hello = 'prabhat';
    return Scaffold(
      appBar: AppBar(
        title:  Text("My App"),
        backgroundColor: Colors.red, // 🔴 AppBar color set to red
      ),
      body: Center(
        child: Text("Hello, $hello my kahshfdkh is this is my name "),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
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
