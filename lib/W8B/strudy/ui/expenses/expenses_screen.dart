import 'package:flutter/material.dart';

import '../../models/expense.dart';
import 'expenses_tile.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() {
    return _ExpensesScreenState();
  }
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  Widget get content {
    Expense fakeExpense = Expense(title: "fake", amount: 15);
    return ExpenseTile(expense: fakeExpense);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Text('Ronan-The-Best Expenses App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(child: content),
      ),
    );
  }
}
