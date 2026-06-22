import 'package:flutter/material.dart';

import '../../../data/expenses_data.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});


  Widget build(BuildContext context) {

    List<Widget> tiles = Expensescard.map((e) => Text(e.title)).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Expenses App G1-G2"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: tiles),
      ),
    );
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
