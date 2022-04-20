import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_failures/api_core_failures.dart';
import 'package:netflix_clone/domain/downloads/download_service.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
//parts imports
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

//BLOC codes
@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadState> {
  final DownloadService _downloadsRepo;

  /// downloads page initial state declared in super(). 
  DownloadsBloc(this._downloadsRepo) : super(DownloadState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      
      if (state.downloads.isNotEmpty) {
        emit(state);
        return;
      }
      // emiting state class, [isLoading] as true and failure or succ option as none().
      emit(
        state.copyWith(
          isLoading: true,
          downloadsFailureOrSuccesOption: none(),
        ),
      );
      // [_downloadsRepo.getDownloadsImage()] assigning to a Either variable
      // calles downloadsOption.
      //* creating a variable for this funciton , this funciton returns data from json as dart map
      final Either<CoreCommanFailures, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDownloadsImage();

      log(downloadsOption.toString());
      // and emiting depends the value using fold.
      // when use the fold function to emit , there is 2 required function to
      // assign failure and succes.
      emit(
        downloadsOption.fold(
          (failure) {
            // when failure it will send the left side of downloadsOption will send
            return state.copyWith(
              isLoading: false,
              downloadsFailureOrSuccesOption: some(Left(failure)),
              
            );
          },
          (succes) {
            // else the right side of downloadsOption will send
            // that actually a list of downloads

            //* and sending that data to parameter called downloads to acces when it needs
            return state.copyWith(
              isLoading: false,
              // also the list of download will send to downlaod .
              downloads: succes,
              downloadsFailureOrSuccesOption: Some(Right(succes)),
            );
          },
        ),
      );
    });
  }
}
