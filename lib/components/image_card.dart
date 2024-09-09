import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ImageCard extends StatefulWidget {
  const ImageCard({super.key});

  @override
  State<ImageCard> createState() => ImageCardState();
}

class ImageCardState extends State<ImageCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/institution_profile_page');
      },
      child: Expanded(
        // Permite que o cartão expanda na largura disponível
        child: Material(
          elevation: 15,
          borderRadius: BorderRadius.circular(15.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              'assets/instituicao.png',
              height: 90,
              width: double.infinity, // Ocupará toda a largura disponível
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
