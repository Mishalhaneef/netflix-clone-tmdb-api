import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/new%20and%20hot/screen_new_and_hot.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _moonKnightImage =
        "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/64a8imymtJ4WOzIeyUHLtZnJ3wv.jpg";
    const _moonKnightText =
        "https://forum.comicsheatingup.net/uploads/default/original/3X/7/9/792ed57f243883bbdb49ebc36c086c06b0b5d248.png";

    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        const DateWidget(),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              VideoWidget(movieImage: _moonKnightImage),
              kHeight20,
              HeadButton(moonKnightText: _moonKnightText),
              SizedBox(height: 5),
              Text(
                "  Comgin on Friday",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
              kHeight20,
              FIlmText(
                text: 'series',
              ),
              kHeight,
              Text(
                "Moon Knight",
                style: TextStyle(fontSize: 17),
              ),
              kHeight,
              Text(
                'When Steven Grant, a mild-mannered gift-shop employee, becomes plagued with blackouts and memories of another life, he discovers he has dissociative identity',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class FIlmText extends StatelessWidget {
  const FIlmText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          netflixLogo,
          height: 15,
        ),
        Text(
          ' $text'.toUpperCase(),
          style: TextStyle(letterSpacing: 5, fontSize: 10),
        )
      ],
    );
  }
}

class HeadButton extends StatelessWidget {
  const HeadButton({
    Key? key,
    required String moonKnightText,
  })  : _moonKnightText = moonKnightText,
        super(key: key);

  final String _moonKnightText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          _moonKnightText,
          color: kWhite,
          height: 50,
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CustomButtonWidget2(
              icon: CupertinoIcons.bell,
              text: "Remind me",
            ),
            kWidth,
            kWidth,
            CustomButtonWidget2(
              icon: Icons.info_outline_rounded,
              text: "info",
            ),
            kWidth,
          ],
        )
      ],
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 440,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            "FEB",
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            "15",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
