import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/rendering.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dice Roller',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                  fontSize: 30),
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            const Text(
              'Click the dice bellow to roll it And check your lucky Num83r',
              style: TextStyle(
                  color: Colors.greenAccent, fontFamily: 'PlaywriteESDeco'),
            ),
            const SizedBox(height: 150),
            DicePage(),
          ],
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var left = 2;
  var right = 2;

  void change() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        child: TextButton(
          onPressed: change,
          child: Image.asset('images/dice$left.png'),
        ),
      ),
    );
  }
}
