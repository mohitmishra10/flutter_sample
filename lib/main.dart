
// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample/screens/home_page.dart';
import 'package:sample/screens/loginpage/login_page.dart';
import 'package:sample/widgets/themes.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       themeMode: ThemeMode.light,
       theme: MyTheme.lightTheme(context),
       darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/":(context)=>LoginPage(),
        "/home":(context)=>HomePage(),
        "/login":(context)=>LoginPage(),
      },
    );
    
  }
} 