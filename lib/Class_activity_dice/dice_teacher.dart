import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: AppScreen()));
}

const String dice1Path = "assets/dices/dice-1.png";
const String dice4Path = "assets/dices/dice-4.png";
 
String currentDicePath = dice1Path;

 class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  void onTap() {
    currentDicePath = dice4Path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(currentDicePath, width: 300),
              SizedBox(height: 20),
              TextButton(
                onPressed: onTap,
                child: Text(
                  "CHANGE DICE",
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
