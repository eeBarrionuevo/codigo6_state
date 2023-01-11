import 'package:flutter/material.dart';

void main() {
  runApp(Mandarina());
}

class Mandarina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";

  double fontSize = 12.0;

  double redValue = 0;
  double greenValue = 0;
  double blueValue = 0;

  String naranja = "asdsadsad";

  void showMessage() {
    print("El mensaje es $message");
  }

  @override
  Widget build(BuildContext context) {
    print("BUILD!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: TextStyle(
                fontSize: fontSize,
                color: Color.fromRGBO(
                  redValue.toInt(),
                  greenValue.toInt(),
                  blueValue.toInt(),
                  1,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                fontSize = fontSize + 1;
                setState(() {});
              },
              child: Text("Update"),
            ),
            const SizedBox(
              height: 12.0,
            ),
            // Text("Valor del Slider:::: $sliderValue"),
            Slider(
              value: redValue,
              min: 0,
              max: 255,
              thumbColor: Colors.red,
              activeColor: Colors.amber,
              inactiveColor: Colors.indigo,
              onChanged: (double matasquita) {
                redValue = matasquita;
                setState(() {});
              },
            ),
            Slider(
              value: greenValue,
              min: 0,
              max: 255,
              thumbColor: Colors.red,
              activeColor: Colors.amber,
              inactiveColor: Colors.indigo,
              onChanged: (double matasquita) {
                greenValue = matasquita;
                setState(() {});
              },
            ),
            Slider(
              value: blueValue,
              min: 0,
              max: 255,
              thumbColor: Colors.red,
              activeColor: Colors.amber,
              inactiveColor: Colors.indigo,
              onChanged: (double matasquita) {
                blueValue = matasquita;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
