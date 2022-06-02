import 'dart:async';
import 'dart:math';

import "package:flutter/material.dart";

import '../models/mole.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key, required this.difficulty}) : super(key: key);

  final String difficulty;

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  static int _score = 0;
  List<Mole> _moleList = [];
  bool _timerRunning = false;
  late Timer _timer;
  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/game_screen.png"),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
          children: [
            const SizedBox(height: 150),
            score(),



            const SizedBox(height: 450),
            startGameButton(),
          ],
        ),
      ),
    );
  }

  Widget score() {
    return Text(
      "Your score is: $_score",
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25
      ),
    );
  }

  Widget startGameButton() {
    return SizedBox(
      width: 200,
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(
                color: Colors.lightBlueAccent,
                width: 2.0,
              ),
            ),
          ),
        ),
        onPressed: null,
        child: const Text(
          'START GAME',
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}