import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: themeColor,
      title: Text(
        "New & Hot",
        style: GoogleFonts.montserrat(
          fontSize: 27,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Row(
          children: [
            kWidth,
            const Icon(Icons.cast, size: 27),
            kWidth,
            Image.asset(netflixAvatar, height: 27),
            kWidth
          ],
        )
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBar(
            isScrollable: true,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            labelColor: themeColor,
            unselectedLabelColor: kWhite,
            tabs: const [
              Tab(text: '🍿 Coming Soon'),
              Tab(text: "👀 Everyone's Waching"),
            ],
            indicator: BoxDecoration(
                color: kWhite, borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ),
    );
  }
}
