import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/fast%20laugh/fastlaugh_bloc.dart';
import 'package:netflix_clone/presentation/fast%20laugh/widgets/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<FastlaughBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: BlocBuilder<FastlaughBloc, FastlaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            );
          } else if (state.isError) {
            return const Center(
              child: Icon(Icons.wifi_off),
            );
          } else if (state.videosList.isEmpty) {
            return const Text('No Shorts found');
          } else {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                  state.videosList.length,
                  (index) => VideoListItemInheritedWidget(
                        widget: VideoListItem(index: index),
                        movieData: state.videosList[index],
                      )),
            );
          }
        },
      ),
    );
  }
}
