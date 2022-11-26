import 'package:flutter/material.dart';
import 'package:random_app/coinpage.dart';
import 'package:random_app/dicepage,dart';

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
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.all(5),
          alignment: Alignment.centerLeft,
          child: TextButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(400, 80)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DiceApp()),
                );
              },
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "주사위",
                    style: TextStyle(
                        color: Color.fromARGB(255, 85, 139, 219),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ))),
        ),
        Container(
          color: Colors.white,
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.all(5),
          alignment: Alignment.centerLeft,
          child: TextButton(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(400, 80)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CoinApp()),
                );
              },
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "동전/코인",
                    style: TextStyle(
                        color: Color.fromARGB(255, 131, 211, 77),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ))),
        ),
      ],
    );
  }
}
