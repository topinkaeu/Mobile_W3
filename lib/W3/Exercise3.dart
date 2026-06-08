import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: Text('OPP', style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            )
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.circular(100)
              ),
              child: Center(
                child: Text('DART', style: TextStyle(fontSize: 25, color: Colors.white,))
              )
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                // color: Colors.blue[600],
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(
                  colors: [
                  Color(0xff027DFD),
                  Color.fromARGB(255, 40, 2, 136)
                  ])
              ),
              child: Center(
                child: Text('FLUTTER', style: TextStyle(fontSize: 25, color: Colors.white))
              ),
              
            )
                    ],
        ),
      )
      )
      );
}
