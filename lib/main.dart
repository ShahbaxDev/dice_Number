import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(const Dice());
}

class Dice extends StatefulWidget {
  const Dice({super.key});
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftNumber = 1;
  int RightNumber = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        backgroundColor: Colors.red,

        appBar: AppBar(
          title: const Center(
              child: Text(
            'Dice_Number',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              wordSpacing: 3,
            ),
          )),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          leftNumber = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image(
                          image: AssetImage('Images/dice$leftNumber.png'))),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          RightNumber = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image(
                          image: AssetImage('Images/dice$RightNumber.png'))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
