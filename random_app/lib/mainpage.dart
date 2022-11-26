import 'package:flutter/material.dart';
import 'list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(214, 255, 255, 255),
      appBar: AppBar(
        title: Text("RandomApp"),
        backgroundColor: const Color.fromARGB(255, 93, 226, 243),
      ),
      body: const List(),
    ));
  }
}
