import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

const _imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5cnLoWq9o5tuLe1Zq4BTX4LwZ2B.jpg";

class NumberCard extends StatelessWidget {
  const NumberCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(width: 40, height: 150),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: kRadius,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(_imageUrl),
                  )),
            ),
          ],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: BorderedText(
              strokeWidth: 3,
              strokeColor: kWhite,
              child: Text(
                '${index + 1}',
                style: GoogleFonts.roboto(
                  fontSize: 120,
                  color: themeColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ))
      ],
    );
  }
}
