import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/new%20and%20hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new%20and%20hot/widgets/everyone_wathcing.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
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
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(context),
            _buildEveryoneWatching("👀 Everyone's Waching"),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon(context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) => const ComingSoonWidget(),
    );
  }

  _buildEveryoneWatching(name) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const EveryoneWatchWidget();
        });
  }
}

class CustomButtonWidget2 extends StatelessWidget {
  const CustomButtonWidget2({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(
          text,
          style: const TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
