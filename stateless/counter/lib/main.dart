import "package:flutter/material.dart";

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
        ),
        body: Center(
          child: Text(
            "Count : $count",
            style: const TextStyle(
              fontSize: 24.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
            setState(() {});
          },
          backgroundColor: Colors.amber,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
