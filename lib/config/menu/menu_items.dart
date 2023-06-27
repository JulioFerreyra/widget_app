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
  MenuIten(
      title: "Contador",
      subtitle: "Contador con Riverpod",
      url: "/counter",
      icon: Icons.plus_one),
  MenuIten(
      title: "Botones",
      subtitle: "Varions botones en flutter",
      url: "/buttons",
      icon: Icons.smart_button),
  MenuIten(
      title: "Tarjetas",
      subtitle: "Un contenedor estilizado",
      url: "/cards",
      icon: Icons.credit_card),
  MenuIten(
      title: "ProgressIndicators",
      subtitle: "Genedaros y controlados",
      url: "/progress",
      icon: Icons.refresh_rounded),
  MenuIten(
      title: "Indicadores y dialogos",
      subtitle: "Indicadores en pantalla",
      url: "/snackbars",
      icon: Icons.info_outline),
  MenuIten(
      title: "Animated container",
      subtitle: "Stateful widget animado",
      url: "/animated",
      icon: Icons.check_box),
  MenuIten(
      title: "Ui controls + Tiles",
      subtitle: "Serie de controles en flutter",
      url: "/ui-control",
      icon: Icons.car_rental),
  MenuIten(
      title: "Tutorial",
      subtitle: "Aprende a usar la aplicación con el siguiente tutorial",
      url: "/tutorial",
      icon: Icons.accessible_rounded),
  MenuIten(
      title: "InfiniteScroll y Pull",
      subtitle: "Listas infinitas",
      url: "/infinite",
      icon: Icons.list_rounded),
  MenuIten(
      title: "Theme change",
      subtitle: "Cambiar el tema",
      url: "/themes",
      icon: Icons.color_lens),
];
