import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zzXFM4FKDG7l1ufrAkwQYv2xvnh.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppTitle(text: "Movies & TV"),
        kHeight,
        Expanded(
          child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 5,
              childAspectRatio: 1 / 1.5,
              children: List.generate(20, (index) {
                return const MainCard();
              })),
        )
      ],
    );
  }
}
