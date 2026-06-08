import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Favorite cards"),
      ),
      body: Column(
        children: [
          Container(
            // YOUR CODE
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.grey))
            ),
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: [
                const Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 20),),
                      Text('title', style: TextStyle(fontSize: 20, color: Colors.blueAccent),),
                      SizedBox(height: 10,),
                      Text('description', style: TextStyle(color: Colors.black),)
                    ],
                  )
                  ),

                  IconButton(onPressed: () => {}, icon: const Icon(Icons.favorite, color: Colors.red,),)


              ],
            ),
          ),
        ],
      ),
    ),
  ),
);
