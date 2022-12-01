import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

enum Number { one, two, three, four }

class _DicePageState extends State<DicePage> {
  Number? _number = Number.one;
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
      body: Center(
        child: Row(
          children: <Widget>[
            Flexible(
              fit: FlexFit.loose,
              child: ListTile(
                contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                title: const Text('1'),
                leading: Radio<Number>(
                  value: Number.one,
                  groupValue: _number,
                  onChanged: (Number? value) {
                    setState(() {
                      _number = value;
                    });
                  },
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: ListTile(
                title: const Text('2'),
                leading: Radio<Number>(
                  value: Number.two,
                  groupValue: _number,
                  onChanged: (Number? value) {
                    setState(() {
                      _number = value;
                    });
                  },
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: ListTile(
                title: const Text('3'),
                leading: Radio<Number>(
                  value: Number.three,
                  groupValue: _number,
                  onChanged: (Number? value) {
                    setState(() {
                      _number = value;
                    });
                  },
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: ListTile(
                title: const Text('4'),
                leading: Radio<Number>(
                  value: Number.four,
                  groupValue: _number,
                  onChanged: (Number? value) {
                    setState(() {
                      _number = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
