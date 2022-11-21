import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          margin: const EdgeInsets.only(top: 5),
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: const Text(
            "주사위",
            style: TextStyle(
                color: Colors.blue, fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          color: Colors.white,
          margin: const EdgeInsets.only(top: 5),
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: const Text(
            "동전/코인",
            style: TextStyle(
                color: Color.fromARGB(255, 64, 226, 226),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
