import 'package:flutter/material.dart';
import 'package:ui_exam/audio_books.dart';

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
      initialRoute: AudioBooks.audioRouteName,
      routes: {
        AudioBooks.audioRouteName:(context) => AudioBooks()
      },
    );
  }
}
