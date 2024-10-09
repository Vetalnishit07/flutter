import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Indian Flag",
      home: IndianFlag(),
    );
  }
}

class IndianFlag extends StatelessWidget {
  const IndianFlag({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indian Flag"),
        backgroundColor: Colors.amber,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 7,
            height: 673,
            color: Colors.black,
          ),
          Column(
            children: [
              const SizedBox(
                width: 100,
                height: 45,
              ),
              Container(
                width: 250,
                height: 50,
                color: Colors.orange,
              ),
              Container(
                width: 250,
                height: 50,
                color: Colors.white,
                child: Image.network(
                    "https://static.vecteezy.com/system/resources/previews/019/136/455/original/ashok-chakra-logo-ashok-chakra-free-free-vector.jpg"),
              ),
              Container(
                width: 250,
                height: 50,
                color: Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
