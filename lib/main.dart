import 'package:flutter/material.dart';
import 'package:ui_exam/home.dart';

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
      initialRoute:Home_screen.routeName ,
      routes: {
        Home_screen.routeName: (context) =>  Home_screen()
      },

    );
  }
}
