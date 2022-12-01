import 'package:flutter/material.dart';

class CoinPage extends StatefulWidget {
  const CoinPage({super.key});

  @override
  State<CoinPage> createState() => _CoinPageState();
}

enum Number { one, two, three, four }

class _CoinPageState extends State<CoinPage> {
  Number? _number = Number.one;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(214, 255, 255, 255),
      appBar: AppBar(
        title: const Text("동전/코인"),
        backgroundColor: const Color.fromARGB(255, 93, 226, 243),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Row(),
      ),
    );
  }
}
