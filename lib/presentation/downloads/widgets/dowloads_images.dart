import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class DownloadsImageWIdget extends StatelessWidget {
  const DownloadsImageWIdget({
    Key? key,
    required this.image,
    this.angle = 0,
    required this.margin,
  }) : super(key: key);

  final double angle;
  final String image;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * 0.4,
        height: size.width * 0.6,
        decoration: BoxDecoration(
            borderRadius: kRadius,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            )),
      ),
    );
  }
}