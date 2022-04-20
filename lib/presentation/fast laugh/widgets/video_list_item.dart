import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/application/fast%20laugh/fastlaugh_bloc.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/presentation/search/search_details/detailed_view.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VideoListItemInheritedWidget({
    Key? key,
    required this.widget,
    required this.movieData,
  }) : super(key: key, child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  VideoListItem({Key? key, required this.index}) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
    final movieData = VideoListItemInheritedWidget.of(context)!.movieData;
    return Stack(
      children: [
        FastLaughVideoPlayer(
          videoURL: dummyVideoURLs[index % dummyVideoURLs.length],
          onStateChanged: (value) {},
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchDetailedScreen(
                                movieName: movieData.title,
                                moviePoster:
                                    '$imageAppentURL${movieData.posterPath}',
                              ),
                            )),
                        child: CircleAvatar(
                            radius: 30,
                            backgroundImage: movieData.posterPath == null
                                ? null
                                : NetworkImage(
                                    '$imageAppentURL${movieData.posterPath}')),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: addedVideosNotifier,
                      builder:
                          (BuildContext context, Set<int> newAddedList, _) {
                        final _index = index;
                        if (newAddedList.contains(_index)) {
                          return GestureDetector(
                            onTap: () {
                              // BlocProvider.of<FastlaughBloc>(context)
                              //     .add(RemoveVideo(id: index));

                              addedVideosNotifier.value.remove(_index);
                              addedVideosNotifier.notifyListeners();
                            },
                            child: const VideoActionsWidget(
                              icon: Icons.emoji_emotions,
                              title: "LOL",
                            ),
                          );
                        }
                        return GestureDetector(
                          onTap: () {
                            // BlocProvider.of<FastlaughBloc>(context)
                            //     .add(AddVideo(id: index));

                            addedVideosNotifier.value.add(_index);
                            addedVideosNotifier.notifyListeners();
                          },
                          child: const VideoActionsWidget(
                            icon: Icons.emoji_emotions_outlined,
                            title: "LOL",
                          ),
                        );
                      },
                    ),
                    const VideoActionsWidget(
                      icon: Icons.add,
                      title: "My List",
                    ),
                    GestureDetector(
                      onTap: () {
                        final movieName =
                            VideoListItemInheritedWidget.of(context)!
                                .movieData
                                .posterPath;
                        if (movieName != null) {
                          Share.share(movieName);
                        }
                      },
                      child: const VideoActionsWidget(
                        icon: Icons.share,
                        title: "Share",
                      ),
                    ),
                    const VideoActionsWidget(
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

class FastLaughVideoPlayer extends StatefulWidget {
  final videoURL;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVideoPlayer({
    Key? key,
    required this.videoURL,
    required this.onStateChanged,
  }) : super(key: key);

  @override
  State<FastLaughVideoPlayer> createState() => FastLaughVideoPlayerState();
}

class FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoURL);
    _videoPlayerController.initialize().then((value) {
      setState(() {});
      _videoPlayerController.play();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _videoPlayerController.setVolume(0),
      onDoubleTap: () => _videoPlayerController.setVolume(1.0),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: _videoPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              )
            : const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
