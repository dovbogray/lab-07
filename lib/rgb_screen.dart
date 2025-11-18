import 'package:flutter/material.dart';

class ColorPickerScreen extends StatefulWidget {
  const ColorPickerScreen({super.key});

  @override
  State<ColorPickerScreen> createState() => _ColorPickerScreenState();
}

class _ColorPickerScreenState extends State<ColorPickerScreen> {
  // Змінні стану
  double _red = 0.0;
  double _green = 0.0;
  double _blue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("RGB Color Changer")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Квадрат
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromRGBO(
                  _red.toInt(),   // Перетворюємо double в int (0-255)
                  _green.toInt(),
                  _blue.toInt(),
                  1.0,            // Прозорість (1.0 = непрозорий)
                ),

              ),
            ),
            const SizedBox(height: 40),

            Text("Red: ${_red.toInt()}"),
            Slider(
              value: _red,
              min: 0,
              max: 255,
              activeColor: Colors.red, // Колір самого повзунка
              onChanged: (double value) {
                setState(() {
                  _red = value;
                });
              },
            ),

            Text("Green: ${_green.toInt()}"),
            Slider(
              value: _green,
              min: 0,
              max: 255,
              activeColor: Colors.green,
              onChanged: (double value) {
                setState(() {
                  _green = value;
                });
              },
            ),

            Text("Blue: ${_blue.toInt()}"),
            Slider(
              value: _blue,
              min: 0,
              max: 255,
              activeColor: Colors.blue,
              onChanged: (double value) {
                setState(() {
                  _blue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}