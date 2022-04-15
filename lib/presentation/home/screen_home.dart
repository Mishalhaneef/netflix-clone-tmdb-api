import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/home_screen_image.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card.dart';
import 'package:netflix_clone/presentation/home/widgets/topbar.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    scrollNotifier.value = true;
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            } else if (direction == ScrollDirection.idle) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                ListView(
                  children: [
                    const HomeImage(),
                    kHeight20,
                    const MainTitleCard(title: 'Relased in the past year'),
                    kHeight,
                    const MainTitleCard(title: 'Trending Now'),
                    kHeight,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppTitle(text: "Top 10 TV Shows in India Today"),
                        kHeight,
                        LimitedBox(
                          maxHeight: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                              10,
                              (index) => Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: NumberCard(index: index),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const MainTitleCard(title: 'Tense Dramas'),
                    kHeight,
                    const MainTitleCard(title: 'South Indian Cinema'),
                  ],
                ),
                AnimatedOpacity(
                  opacity: scrollNotifier.value == true ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 500),
                  child: const TopBar(),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
