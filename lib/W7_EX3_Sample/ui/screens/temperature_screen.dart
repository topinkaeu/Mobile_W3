import 'package:flutter/material.dart';

// Convert this to statefull

class TemperatureScreen extends StatefulWidget {
  const TemperatureScreen({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  State<TemperatureScreen> createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  String _fahrenheitResult = '---';

  final InputDecoration inputDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.5),
      borderRadius: BorderRadius.circular(12),
    ),
    hintText: 'Enter a temperature',
    hintStyle: const TextStyle(color: Colors.white54),
  );
  void _onTemperatureChanged(String value) {
    if (value.isEmpty) {
      setState(() {
        _fahrenheitResult = '---';
      });
    }
  }

  // void _onTemperatureChanged(String value) {
  //   if (value.isEmpty) {
  //     setState(() {
  //       _fahrenheitResult = '---';
  //     });
  //     return;
  //   }

  //   final celsius = double.tryParse(value);
  //   if (celsius != null) {
  //     final fahrenheit = (celsius * 9 / 5) + 32;
  //     setState(() {
  //       _fahrenheitResult = '${fahrenheit.toStringAsFixed(1)} °F';
  //     });
  //   } else {
  //     setState(() {
  //       _fahrenheitResult = 'Invalid input';
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.thermostat_outlined,
              size: 120,
              color: Colors.white,
            ),
            const Center(
              child: Text(
                "Converter",
                style: TextStyle(color: Colors.white, fontSize: 45),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Temperature in Degrees (Celsius):",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged:
                  _onTemperatureChanged, // Triggers state changes directly
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              decoration: inputDecoration,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),
            const Text(
              "Temperature in Fahrenheit:",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                _fahrenheitResult,
                style: const TextStyle(color: Colors.black87, fontSize: 16),
              ),
            ),
            const Spacer(),
            OutlinedButton(
              onPressed: widget.onNext,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 1.0, color: Colors.white),
              ),
              child: const Text(
                'Finish',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
