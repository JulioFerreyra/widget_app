import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});
  static const name = "snackbar_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y dialogos"),
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    children: [
                      const Text(
                          "Eiusmod tempor nulla cupidatat do in cupidatat amet dolore deserunt labore ea elit do sunt. Id quis cillum aliqua et nostrud non sit in nulla quis ut. Voluptate nulla excepteur aute ullamco. Sit incididunt sint occaecat ipsum. Esse consectetur incididunt magna officia veniam consectetur nostrud nulla non irure nulla aute id.")
                    ],
                  );
                },
                child: const Text("Licencias Usadas")),
            FilledButton(
                onPressed: () {
                  _openDialog(context);
                },
                child: const Text("Mostrar Dialogo")),
          ],
        ),
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

  void _openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "¿Estás seguro?",
        ),
        content: const Text(
            "Labore ex proident laboris cupidatat reprehenderit laboris sit in ex eu est exercitation irure. Eiusmod ipsum enim mollit mollit aliquip proident ex id in esse. Incididunt ex ipsum veniam esse officia elit do Lorem fugiat consequat. Ex culpa anim non in quis id eiusmod ipsum consectetur ad deserunt duis. Officia sint est labore anim ea elit magna officia. Anim anim voluptate dolore exercitation qui ut occaecat eiusmod fugiat."),
        actions: [
          TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text("Cancelar")),
          FilledButton(
              onPressed: () {
                context.pop();
              },
              child: const Text("Aceptar"))
        ],
      ),
    );
  }
}
