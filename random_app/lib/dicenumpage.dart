import 'dart:math';

import 'package:flutter/material.dart';

class DicenumPage extends StatefulWidget {
  final int dicecnt;
  const DicenumPage({
    super.key,
    required this.dicecnt,
  });

  @override
  State<DicenumPage> createState() => _DicenumPageState();
}

class _DicenumPageState extends State<DicenumPage> {
  int ranINT = 0;
  List<Image> images = [
    Image.asset(
      'assets/images/1.png',
      width: 150,
      height: 150,
    ),
    Image.asset(
      'assets/images/2.png',
      width: 150,
      height: 150,
    ),
    Image.asset(
      'assets/images/3.png',
      width: 150,
      height: 150,
    ),
    Image.asset(
      'assets/images/4.png',
      width: 150,
      height: 150,
    ),
    Image.asset(
      'assets/images/5.png',
      width: 150,
      height: 150,
    ),
    Image.asset(
      'assets/images/6.png',
      width: 150,
      height: 150,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text("주사위"),
        backgroundColor: const Color.fromRGBO(93, 226, 243, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 10,
              children: [
                for (int i = 0; i < widget.dicecnt; i++) random(),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(50),
            ),
            SizedBox(
              width: 100.0,
              height: 50.0,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      random();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 148, 233, 50)),
                  child: const Text("새로고침")),
            )
          ],
        ),
      ),
    );
  }

  random() {
    ranINT = Random().nextInt(6);
    return images[ranINT];
  }
}
