import 'dart:math';

import 'package:flutter/material.dart';

class CoinPage extends StatefulWidget {
  const CoinPage({super.key});

  @override
  State<CoinPage> createState() => _CoinPageState();
}

enum Number { one, two, three, four }

class _CoinPageState extends State<CoinPage> {
  bool isVisible = true;
  List<Image> images = [
    Image.asset('assets/images/front.png'),
    Image.asset('assets/images/back.png')
  ];
  Image current = Image.asset('assets/images/front.png');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: current,
                ),
                onTap: () {
                  setState(() {
                    isVisible = false;
                    int ranInt = Random().nextInt(images.length);
                    current = images[ranInt];
                  });
                },
              ),
              Visibility(
                visible: isVisible,
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 500,
                  height: 100,
                  child: const Text(
                    "동전을 누르세요!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
