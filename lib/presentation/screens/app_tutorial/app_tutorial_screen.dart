import 'package:flutter/material.dart';

final slides = <SlideInfo>[];

class SlideInfo {
  final String title;
  final String caption;
  final String imegeUrl;

  SlideInfo(this.title, this.caption, this.imegeUrl);

  final slides = <SlideInfo>[
    SlideInfo(
        'food',
        'Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. ',
        'assets/images/1.png'),
    SlideInfo(
        'fast delivery',
        'El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo ',
        'assets/images/1.png'),
    SlideInfo(
        'enjoy',
        ' Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto',
        'assets/images/1.png'),
  ];
}

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides
            .map((slideInfo) => _Slide(
                title: slideInfo.title,
                caption: slideInfo.caption,
                imageUrl: slideInfo.imegeUrl))
            .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      color: Colors.black,
    );
  }
}
