import 'package:flutter/material.dart';
import 'package:random_app/coin.dart';
import 'coin.dart';

void main() {
  runApp(const CoinApp());
}

class CoinApp extends StatelessWidget {
  const CoinApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(214, 255, 255, 255),
      appBar: AppBar(
        title: const Text("코인/동전"),
        backgroundColor: const Color.fromARGB(255, 93, 226, 243),
      ),
      body: const CoinPage(),
    ));
  }
}
