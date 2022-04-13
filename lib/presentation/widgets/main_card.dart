import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

const _imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6nhwr1LCozBiIN47b8oBEomOADm.jpg";

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadius,
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(_imageUrl),
          )),
    );
  }
}
