import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class VideoListItem extends StatelessWidget {
  VideoListItem({Key? key, required this.index}) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //left side
                CircleAvatar(
                  backgroundColor: CupertinoColors.black.withOpacity(0.5),
                  radius: 30,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.volume_off,
                        size: 30,
                      )),
                ),

                //right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://i.guim.co.uk/img/media/ffc016b01f45eeec94ff69dc59eb65a9137ae52a/0_95_3500_2101/master/3500.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=915d4080291d752325c0a25518ac4602"),
                      ),
                    ),
                    VideoActionsWidget(
                      icon: Icons.emoji_emotions,
                      title: "LOL",
                    ),
                    VideoActionsWidget(
                      icon: Icons.add,
                      title: "My List",
                    ),
                    VideoActionsWidget(
                      icon: Icons.share,
                      title: "Share",
                    ),
                    VideoActionsWidget(
                      icon: CupertinoIcons.play_fill,
                      title: "Play",
                    ),
                    kHeight20
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Positioned(
              left: 1.0,
              top: 3.0,
              child: Icon(icon, size: 30, color: Colors.black54),
            ),
            Icon(icon, size: 30, color: Colors.white),
          ],
        ),
        Text(title),
        kHeight20,
        kHeight
      ],
    );
  }
}
