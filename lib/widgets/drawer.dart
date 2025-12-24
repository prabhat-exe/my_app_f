import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_Drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Prabhat"),
              accountEmail: Text("prabhat@gmail"),
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                border: Border(),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/login_image.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaler: TextScaler.linear(1.2),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaler: TextScaler.linear(1.2),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "Mail me",
                textScaler: TextScaler.linear(1.2),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
