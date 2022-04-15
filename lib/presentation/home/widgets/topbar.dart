import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';


class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 120,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            end: Alignment(0.0, -1),
            begin: Alignment(0.0, 0.6),
            colors: [
              Colors.transparent,
              Colors.black,
            ],
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.network(netflixLogo, height: 40),
                const Spacer(),
                const Icon(Icons.cast, size: 27),
                kWidth,
                Image.asset(netflixAvatar, height: 27),
                kWidth
              ],
            ),
            kHeight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("TV Shows", style: kHomeTitleText),
                const Text("Movies", style: kHomeTitleText),
                Row(
                  children: const [
                    Text("Categories", style: kHomeTitleText),
                    Icon(Icons.arrow_drop_down)
                  ],
                )
              ],
            )
          ],
        ));
  }
}

