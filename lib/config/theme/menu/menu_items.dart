import 'package:flutter/material.dart';

class MenuIten {
  final String title;
  final String subtitle;
  final String url;
  final IconData icon;

  const MenuIten(
      {required this.title,
      required this.subtitle,
      required this.url,
      required this.icon});
}

const List<MenuIten> appMenuItems = [
  MenuIten(title: "Botones", subtitle: "Varions botones en flutter", url: "/buttons", icon: Icons.smart_button),
  MenuIten(title: "Tarjetas", subtitle: "Un contenedor estilizado", url: "/cards", icon: Icons.credit_card),

];
