import 'package:flutter/material.dart';

class ScreenColors extends StatefulWidget {
  const ScreenColors({super.key});

  @override
  State<ScreenColors> createState() => _ScreenColorsState();
}

int colorValue = 0;

class _ScreenColorsState extends State<ScreenColors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colorValue == 0 ? Colors.blue : Colors.orange.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      colorValue = 0;
                    });
                  }),
                  child: const Text("Blue")),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      colorValue = 1;
                    });
                  }),
                  child: const Text("Orange"))
            ],
          ),
        ),
      ),
    );
  }
}
