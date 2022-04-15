import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/downloads/widgets/section2.dart';
import 'package:netflix_clone/presentation/downloads/widgets/section3.dart';
import 'package:netflix_clone/presentation/downloads/widgets/smart_downloads.dart';
import 'package:netflix_clone/presentation/widgets/appbar_widget.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({Key? key}) : super(key: key);

  final _widgetlist = const [
    SmartDownloads(),
    Section2(),
    Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => _widgetlist[index],
          separatorBuilder: (context, index) {
            return const SizedBox(height: 25);
          },
          itemCount: _widgetlist.length,
        ));
  }
}
