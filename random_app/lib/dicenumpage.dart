import 'package:flutter/material.dart';

class DicenumPage extends StatefulWidget {
  const DicenumPage({super.key});

  @override
  State<DicenumPage> createState() => _DicenumPageState();
}

class _DicenumPageState extends State<DicenumPage> {
  int ranINT = 0;
  List<Image> images = [
    Image.asset('assets/images/1.png'),
    Image.asset('assets/images/2.png'),
    Image.asset('assets/images/3.png'),
    Image.asset('assets/images/4.png'),
    Image.asset('assets/images/5.png'),
    Image.asset('assets/images/6.png')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(214, 255, 255, 255),
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
      body: Column(),
    );
  }
}
