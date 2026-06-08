import 'package:flutter/material.dart';

// 1. The Widget Class (Immutable configuration)
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

// 2. The State Class (Mutable data and UI logic)
class _CounterWidgetState extends State<CounterWidget> {
  // This is our State data. It persists!
  int _counter = 0;

  void _incrementCounter() {
    // We MUST wrap the mutation in setState()
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulWidget Example')),
      body: Center(
        child: Text(
          'Button pressed $_counter times',
          style: const TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
