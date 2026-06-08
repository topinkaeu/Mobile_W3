import 'package:flutter/material.dart';

final String dice1Path = "assets/dices/dice-2.png";
final String dice4path = "assets/dices/dice-4.png";

void onTap() {
  // TODO
}

class Appwidget extends StatelessWidget {
  const Appwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.purple,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(dice1Path),
                SizedBox(height: 20),
                TextButton(
                  onPressed: onTap,
                  child: Text(
                    "CLICK",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}

void main() {
  runApp(
    MaterialApp(),
  );
}
