import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'hero1',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/bg.jpg',
              color: Colors.teal,
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.fill,
              height: 200.0,
              width: double.infinity,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
                letterSpacing: 40.0,
                color: Colors.white60),
          ),
        ),
      ],
    );
  }
}
