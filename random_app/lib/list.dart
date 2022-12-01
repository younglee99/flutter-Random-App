import 'package:flutter/material.dart';
import 'package:random_app/coin.dart';
import 'package:random_app/dice.dart';

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
          child: TextButton.icon(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(400, 80)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DicePage()),
                );
              },
              icon: const Icon(
                Icons.casino,
                size: 50,
                color: Color.fromARGB(255, 85, 139, 219),
              ),
              label: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  주사위",
                    style: TextStyle(
                        color: Color.fromARGB(255, 85, 139, 219),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ))),
        ),
        Container(
          color: Colors.white,
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.all(5),
          alignment: Alignment.centerLeft,
          child: TextButton.icon(
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(const Size(400, 80)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CoinPage()),
                );
              },
              icon: const Icon(
                Icons.paid_outlined,
                size: 50,
                color: Color.fromARGB(255, 131, 211, 77),
              ),
              label: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  동전/코인",
                    style: TextStyle(
                        color: Color.fromARGB(255, 131, 211, 77),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ))),
        ),
      ],
    );
  }
}
