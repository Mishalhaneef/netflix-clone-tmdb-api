import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/new%20and%20hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new%20and%20hot/widgets/custom_button.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class EveryoneWatchWidget extends StatelessWidget {
  const EveryoneWatchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Free Guy",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          ' A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.',
          style: TextStyle(color: Colors.grey),
        ),
        kHeight20,
        kHeight20,
        const VideoWidget(
          movieImage:
              'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/8Y43POKjjKDGI9MH89NW0NAzzp8.jpg',
        ),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'http://assets.stickpng.com/images/610fc97592da260004e36867.png',
                  height: 50,
                ),
                FIlmText(text: 'Movie')
              ],
            ),
            Spacer(),
            const CustomButtonWidget2(
              icon: Icons.send,
              text: "Share",
            ),
            kWidth,
            kWidth,
            const CustomButtonWidget2(
              icon: Icons.add,
              text: "My List",
            ),
            kWidth,
            kWidth,
            const CustomButtonWidget2(
              icon: Icons.play_arrow,
              text: "Play",
            ),
          ],
        ),
        kHeight20
      ],
    );
  }
}
