import "package:flutter/material.dart";
import "game_screen.dart";
import "package:fluttertoast/fluttertoast.dart";

class DifficultyScreen extends StatefulWidget {
  const DifficultyScreen({Key? key}) : super(key: key);

  static String difficulty = _DifficultyScreenState._difficulty;

  @override
  State<DifficultyScreen> createState() => _DifficultyScreenState();
}

class _DifficultyScreenState extends State<DifficultyScreen> {

  static String _difficulty = "easy"; // DEFAULT DIFFICULTY IS EASY

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/main_screen.png"),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
          children: [
            const SizedBox(
                height: 160
            ),
            Text(
              "Choose your difficulty below. \n Your current difficulty is $_difficulty.",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
                height: 150
            ),
            SizedBox(
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
                onPressed: () => setDifficulty("easy"), // SET DIFFICULTY TO EASY
                child: const Text(
                  'EASY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
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
                onPressed: () => setDifficulty("medium"), // SET DIFFICULTY TO MEDIUM
                child: const Text(
                  'MEDIUM',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
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
                onPressed: () => setDifficulty("hard"), // SET DIFFICULTY TO HARD
                child: const Text(
                  'HARD',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }

  void setDifficulty(String difficulty) {
    _difficulty = difficulty;
    Fluttertoast.showToast(
      msg: "You set the difficulty to $difficulty.",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
    setState(() {});
  }

  String returnDifficulty() {
    return _difficulty;
  }
}
