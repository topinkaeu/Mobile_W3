import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _selected = false;
  String get label => _selected ? "Selected" : "Not Selected";
  Color get textColor => _selected ? Colors.white : Colors.black;
  Color get background => _selected ? Colors.blue[500]! : Colors.blue[50]!;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: () => {
          setState(() {
            _selected = !_selected;
          }),
        },
        style: ElevatedButton.styleFrom(backgroundColor: background),
        child: Text(label, style: TextStyle(color: textColor, fontSize: 20)),
      ),
    );
  }
}

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        // child: SizedBox(
        //   width: 400,
        //   height: 100,
        //   child: ElevatedButton(
        //     onPressed: () => {},
        //     child: const Center(child: Text("Not Selected")),
        //   ),
        // ),
        child: Column(
        mainAxisAlignment : MainAxisAlignment.center,
        children: const [
          Button(),
          SizedBox(height: 20,),
          Button(),
          SizedBox(height: 20,),
          Button(),
          SizedBox(height: 20,),
          Button(),
          SizedBox(height: 20),

        ]
        ),
      ),
    ),
  ),
);


