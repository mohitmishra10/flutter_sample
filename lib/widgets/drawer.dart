// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Mohit Mishra"),
                accountEmail: Text("mohit@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("assets/images/mohit.jpeg"),),
              ),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Theme",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.check_mark,
                color: Colors.black,
              ),
              title: Text(
                "Checkmark",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.cart,
                color: Colors.black,
              ),
              title: Text(
                "Cart",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.compass,
                color: Colors.black,
              ),
              title: Text(
                "Compass",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.airplane,
                color: Colors.black,
              ),
              title: Text(
                "Airplane",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.calendar_circle,
                color: Colors.black,
              ),
              title: Text(
                "Calendar",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.exclamationmark,
                color: Colors.black,
              ),
              title: Text(
                "Help",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 