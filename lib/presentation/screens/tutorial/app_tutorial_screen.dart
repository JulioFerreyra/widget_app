import 'package:flutter/material.dart';

final List<SlideInfo> slides = [
  SlideInfo("Busca la comida", "Enim amet nostrud proident sunt proident velit culpa consequat sunt esse.", "assets/images/1.png"),
  SlideInfo("Entrega rápida", "Sint aliquip non adipisicing reprehenderit et fugiat.", "assets/images/2.png"),
  SlideInfo("Disfruta la comida", "Culpa sunt consequat ut eiusmod.", "assets/images/3.png"),
];

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

class AppTutorialScreen extends StatelessWidget {
  static const name = "tutorial_screen";

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: [
          // _Slide(slides[1], slides[2], slides[3])
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide(this.title, this.caption, this.imageUrl);

  
  @override
  Widget build(BuildContext context) {
    return Container();        
  }
}