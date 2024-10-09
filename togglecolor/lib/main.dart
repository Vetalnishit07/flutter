import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToggleColor(),
    );
  }
}

class ToggleColor extends StatefulWidget {
  const ToggleColor({super.key});

  @override
  State<ToggleColor> createState() => _ToggleColorState();
}

class _ToggleColorState extends State<ToggleColor> {
  bool ColorChange = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Toggle Color"),
        ),
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            color: ColorChange ? Colors.green : Colors.red,
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (ColorChange) {
                ColorChange = false;
              } else {
                ColorChange = true;
              }
              setState(() {});
            },
            backgroundColor: Colors.amber[300],
            child: Text("Button")),
      ),
    );
  }
}
