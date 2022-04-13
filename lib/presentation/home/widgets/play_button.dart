import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kWhite),
      ),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        color: themeColor,
      ),
      label: const Text(
        'Play  ',
        style: TextStyle(
          color: themeColor,
          fontSize: 20,
        ),
      ),
    );
  }
}
