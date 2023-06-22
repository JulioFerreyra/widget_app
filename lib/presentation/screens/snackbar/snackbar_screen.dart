import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});
  static const name = "snackbar_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snacbars y dialogos"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ScaffoldMessenger.of(context).clearSnackBars;
          _showCustomSnackbar(context);
        },
        label: const Text("Mostrar snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }

  void _showCustomSnackbar(BuildContext context) {
    SnackBar snackbar = SnackBar(
      
      content: const Text("Hola mundo"),
      action: SnackBarAction(
        label: "Hide",
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
