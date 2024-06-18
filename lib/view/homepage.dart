import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var activeImage = "images/dice-1.png";
  var currentDice = 2;
  void rollDice() {
    setState(() {
      currentDice = Random().nextInt(6)+1;
      // activeImage = "images/dice-4.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Dice App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "images/dice-$currentDice.png",
              scale: 2,
            ),
            TextButton(
              onPressed: rollDice,
              child: const Text(
                "Roll Dice",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
