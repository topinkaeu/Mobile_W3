import 'package:flutter/material.dart';

class TemperatureScreen extends StatefulWidget {
  const TemperatureScreen({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  State<TemperatureScreen> createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  final TextEditingController _celsiusController = TextEditingController();
  String _fahrenheitResult = '';
  //convert function
  void _convertTemperature(String value) {
    if (value.isEmpty) {
      setState(() {
        _fahrenheitResult = '';
      });
      return;
    }

    final double? celsius = double.tryParse(value);

    setState(() {
      if (celsius != null) {
        double fahrenheit = (celsius * 9 / 5) + 32;

        _fahrenheitResult = fahrenheit.toStringAsFixed(2);
      } else {
        _fahrenheitResult = 'Invalid input';
      }
    });
  }

  @override
  void dispose() {
    _celsiusController.dispose(); 
    super.dispose();
  }

  final InputDecoration inputDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 2.0),
      borderRadius: BorderRadius.circular(12),
    ),
    hintText: 'Enter a temperature',
    hintStyle: const TextStyle(color: Colors.white70),
  );

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
              controller: _celsiusController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ), // Force number keyboard
              decoration: inputDecoration,
              style: const TextStyle(color: Colors.white),
              onChanged:
                  _convertTemperature, // Triggers every time the user types
            ),
            const SizedBox(height: 30),
            const Text(
              "Temperature in Fahrenheit:",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                _fahrenheitResult.isEmpty
                    ? 'Input first (:)'
                    : '$_fahrenheitResult *F',
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            const Spacer(),
            OutlinedButton(
              onPressed: widget
                  .onNext, // Use 'widget.' to access variables from the parent class
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
