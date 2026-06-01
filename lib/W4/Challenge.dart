import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),

            Container(height: 300, color: Colors.blue),

            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.green)),
                    Container(
                      padding: const EdgeInsets.only(left: 100),
                      color: Colors.pink,
                    ),
                   
                  ],
                ),
              ),
              //3 Yellows
            ),
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.yellowAccent)),

                  const SizedBox(width: 20),

                  Expanded(child: Container(color: Colors.yellowAccent)),

                  const SizedBox(width: 20),

                  Expanded(child: Container(color: Colors.yellowAccent)),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Expanded(child: Container(color: Colors.pinkAccent)),
          ],
        ),
      ),
    ),
  );
}
