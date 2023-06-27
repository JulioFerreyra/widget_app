import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const String name = "counter_screen";

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.plus_one),
      ),
      body: Center(
        child: Text(
          "Valor: $counter",
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
