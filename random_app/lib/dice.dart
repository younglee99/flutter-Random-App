// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'dicenumpage.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(214, 255, 255, 255),
      appBar: AppBar(
        title: const Text("주사위"),
        backgroundColor: const Color.fromARGB(255, 93, 226, 243),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 4; i++)
                Row(
                  children: [
                    Radio(
                      value: i + 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text((i + 1).toString()),
                  ],
                ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DicenumPage()),
                );
              },
              child: const Text("선택")),
        ],
      ),
    );
  }
}
