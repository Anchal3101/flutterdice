import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: Dice(),
  ));
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  // ignore: non_constant_identifier_names
  int DiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    var flatButton = FlatButton(
      minWidth: 200,
      height: 200,
      onPressed: () {
        setState(() {
          DiceNumber = Random().nextInt(6) + 1;
          debugPrint("THe value $DiceNumber");
        });
      },
      child: Image.asset(
        'images/dice$DiceNumber.png',
        width: 300,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),
      backgroundColor: Colors.blueAccent.shade100,
      body: Center(
        child: Row(
          children: [Expanded(child: flatButton)],
        ),
      ),
    );
  }
}
