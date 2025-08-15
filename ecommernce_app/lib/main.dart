import 'package:ecommernce_app/screens/homepage.dart';
import 'package:ecommernce_app/screens/login.dart';
import 'package:ecommernce_app/screens/signup.dart';
import 'package:ecommernce_app/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: splashscreen(),
      routes: {
        'login': (context) => login(),
        'signup': (context) => signup(),
        'splashscreen': (context) => splashscreen(),
        'homescreen': (context) => homescreen(),
      },
    );
  }
}
