import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/downloads/download_service.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

part 'fastlaugh_event.dart';
part 'fastlaugh_state.dart';
part 'fastlaugh_bloc.freezed.dart';

final dummyVideoURLs = [
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
];

ValueNotifier<Set<int>> addedVideosNotifier = ValueNotifier({});

@injectable
class FastlaughBloc extends Bloc<FastlaughEvent, FastlaughState> {
  FastlaughBloc(
    DownloadService _downloadService,
  ) : super(FastlaughState.initial()) {
    on<Initialize>((event, emit) async {
      // emit(
      //   const FastlaughState(
      //     videosList: [],
      //     isLoading: true,
      //     isError: false,
      //   ),
      // );
      // get trending movies
      final _result = await _downloadService.getDownloadsImage();
      final _state = _result.fold((l) {
        return const FastlaughState(
          videosList: [],
          isLoading: false,
          isError: true,
        );
      }, (response) {
        return FastlaughState(
          videosList: response,
          isLoading: false,
          isError: false,
        );
      });

      // send to UI
      emit(_state);
    });

    // on<AddVideo>((event, emit) async {
    //   addedVideosNotifier.value.add(event.id);
    //   addedVideosNotifier.notifyListeners();
    //   log('list added');
    //   log('$event');
    // });

    // on<RemoveVideo>((event, emit) async {
    //   addedVideosNotifier.value.add(event.id);
    //   addedVideosNotifier.notifyListeners();
    // });
  }
}
