import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/new%20and%20hot/widgets/appbar_eidget.dart';
import 'package:netflix_clone/presentation/new%20and%20hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new%20and%20hot/widgets/everyone_wathcing.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(125),
          child: AppBarWidget(),
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


