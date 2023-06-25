import 'package:flutter/material.dart';

final List<SlideInfo> slides = [
  SlideInfo(
      "Busca la comida",
      "Enim amet nostrud proident sunt proident velit culpa consequat sunt esse.",
      "assets/Images/1.png"),
  SlideInfo(
      "Entrega rápida",
      "Sint aliquip non adipisicing reprehenderit et fugiat.",
      "assets/Images/2.png"),
  SlideInfo("Disfruta la comida", "Culpa sunt consequat ut eiusmod.",
      "assets/Images/3.png"),
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
        children: slides
            .map((slidesData) => _Slide(
                slidesData.title, slidesData.caption, slidesData.imageUrl))
            .toList()
        // _Slide(slides[1], slides[2], slides[3])
        ,
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Image(
            image: AssetImage(imageUrl),
          ),
        ],
      ),
    );
  }
}
