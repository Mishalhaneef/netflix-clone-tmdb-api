import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Row(
          children: const [
            Icon(Icons.settings),
            kWidth,
            Text("Smart Downloads"),
          ],
        )
      ],
    );
  }
}