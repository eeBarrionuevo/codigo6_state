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

  int position = 0;

  List<String> images = [
    "https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/2659475/pexels-photo-2659475.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1643130/pexels-photo-1643130.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/758742/pexels-photo-758742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];

  void showMessage() {
    print("El mensaje es $message");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              Text("Valor del Slider:::: $redValue"),
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
              Text("Valor del Slider:::: $greenValue"),
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
              Text("Valor del Slider:::: $blueValue"),
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
              const SizedBox(
                height: 20.0,
              ),
              Image.network(
                images[position],
                height: 260,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (position > 0) {
                        position = position - 1;
                        setState(() {});
                        //position--;
                      }
                    },
                    child: Text("Anterior"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (position < images.length - 1) {
                        position = position + 1;
                        setState(() {});
                        //position++;
                      }
                    },
                    child: Text("Siguiente"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
