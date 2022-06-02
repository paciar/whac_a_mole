import "package:flutter/material.dart";
import 'package:whac_a_mole/screens/difficulty_screen.dart';
import 'game_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

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
              height: 80
            ),

            Image.asset("assets/whac_a_mole.png"),

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
                onPressed: loadGame,
                child: const Text(
                  'PLAY',
                  style: TextStyle(
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
                onPressed: loadDifficulty,
                child: const Text(
                  'DIFFICULTY',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loadGame() {
    String difficulty = DifficultyScreen.difficulty;
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
            return GameScreen(difficulty: difficulty);
          }
      )
    );
  }

  void loadDifficulty() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const DifficultyScreen();
        }
      )
    );
  }
}
