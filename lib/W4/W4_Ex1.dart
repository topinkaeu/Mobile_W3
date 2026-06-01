import 'package:flutter/material.dart';

Widget HobbyCard({
  required String title,
  required IconData icon,
  Color backgroundColor = Colors.blue,
}) {
  return Container(
    height: 80,
    decoration: BoxDecoration(color: backgroundColor,borderRadius:  BorderRadius.circular(20)),
  
    child: Row(
      children: [
        SizedBox(width: 30),
        Icon(icon, color: Colors.white, size: 30),
        SizedBox(width: 20),
        Text(title, style: TextStyle(color: Colors.white, fontSize: 30)),
      ],
    ),
  );
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(color: Colors.white),
                child: Center(
                  child: Text(
                    'My Hobbies',
                    style: TextStyle(
                      fontSize: 40,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),

              //  Text('My hobbies', style: TextStyle(fontSize: 30, color: Colors.white),),
              const SizedBox(height: 40),

              //calling
              HobbyCard(title: 'Travelling', icon: Icons.public, backgroundColor: Colors.green),
              const SizedBox(height: 10),
              HobbyCard(title: 'Football', icon: Icons.sports_soccer, backgroundColor: Colors.yellow),
              const SizedBox(height: 20,),
              HobbyCard(title: 'Basketball', icon: Icons.sports_basketball_outlined),

            ],
          ),
        ),
      ),
    ),
  );
}
