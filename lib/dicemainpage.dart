import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiceMainPage extends StatefulWidget {
  const DiceMainPage({Key? key}) : super(key: key);

  @override
  State<DiceMainPage> createState() => _DiceMainPageState();
}

class _DiceMainPageState extends State<DiceMainPage> {
  int diceOne = 2;
  int diceTwo = 1;

  void rollDice() {
    setState(() {
      diceOne = Random().nextInt(6) + 1;
      diceTwo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF72798),
      appBar: AppBar(
        backgroundColor: const Color(0xffD63484),
        title: const Center(child: Text("DICE APP")),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: rollDice,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset("images/dice$diceOne.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: rollDice,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset("images/dice$diceTwo.png"),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                '${diceOne + diceTwo}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              OutlinedButton(
                onPressed: rollDice,
                child: const Text(
                  "Roll Dice",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
