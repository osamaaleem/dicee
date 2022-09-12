import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Image 1 Pressed');
                    }
                    setState(() {
                      leftDice = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(image: AssetImage("images/dice$leftDice.png"))),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Image 2 Pressed');
                    }
                    setState(() {
                      rightDice = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(image: AssetImage("images/dice$rightDice.png"))),
            ),
          ),
        ],
      ),
    );
  }
}
