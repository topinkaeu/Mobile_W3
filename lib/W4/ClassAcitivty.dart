// import 'package:flutter/material.dart';

// class MyButton extends StatelessWidget {
//   const MyButton({super.key, required this.label, required this.color1, required this.color2});

//   final String label;
//   final Color color1;
//   final Color color2;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(colors: color1, color2),
//         color: color2,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Center(
//         child: Text(label, style: TextStyle(color: Colors.white, fontSize: 40)),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(30.0),
//           child: Column(
//             children: [
//               MyButton(label: "HELLO 1", background: Colors.yellow),
//               MyButton(label: "HELLO 2", background: Colors.red),
//               MyButton(label: "HELLO 3", background: Colors.green),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
