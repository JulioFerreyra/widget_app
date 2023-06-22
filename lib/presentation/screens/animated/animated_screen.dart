import 'package:flutter/material.dart';
import "dart:math" show Random;

class AnimatedScreen extends StatefulWidget {
  static const name = "animated_screen";

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50.0;
  double height = 50.0;
  Color color = Colors.purple;
  double borderRadius = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedScreen.name.replaceFirst("_", " ")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOutCubic,
          width: width <= 0 ? 0 : width,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
            color: color,
            borderRadius:
                BorderRadius.circular(borderRadius <= 0 ? 0 : borderRadius),
          ),
        ),
      ),
    );
  }

  void changeShape() {
    Random random = Random();

    width = random.nextInt(300) + 50;
    height = random.nextInt(300) + 50;
    borderRadius = random.nextInt(100) + 20;

    color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    setState(() {});
  }
}
