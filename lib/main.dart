import 'package:demo/age.dart';
import 'package:demo/booksinweek.dart';
import 'package:demo/gender.dart';
import 'package:demo/loginwith.dart';
import 'package:demo/time.dart';
import 'package:flutter/material.dart';
import 'goals.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "booksinweek",
      routes: {
        "loginwith": (context) => loginwith(),
        "login": (context) => login(),
        "gender": (context) => gender(),
        "age": (context) => age(),
        "goals": (context) => goals(),
        "time": (context) => time(),
        "booksinweek": (context) => booksinweek(),
      },
    );
  }
}
