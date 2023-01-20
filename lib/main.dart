import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      rightDiceNumber = Random().nextInt(6)+1;
      leftDiceNumber = Random().nextInt(6)+1;
      print('diceNumber = $leftDiceNumber');
    });
  }
  @override
  Widget build(BuildContext context) {
    // leftDiceNumber = 2;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(onPressed: () {
                changeDiceFace();
              },
                child: Image.asset('images/dice$leftDiceNumber.png'),),
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(onPressed: () {
              changeDiceFace();
            },
              child: Image.asset('images/dice$rightDiceNumber.png'),),
          ),
          ),
        ],
      ),
    );
  }
}



