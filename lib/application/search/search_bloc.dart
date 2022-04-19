import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_failures/api_core_failures.dart';
import 'package:netflix_clone/domain/downloads/download_service.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:netflix_clone/domain/search/model/search_response/search_response.dart';
import 'package:netflix_clone/domain/search/model/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadService _downloadService;
  final SearchService _searchService;
  SearchBloc(this._downloadService, this._searchService)
      : super(SearchState.initial()) {
    // idle state
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(state);
        return;
      }
      emit(
        const SearchState(
          searchResultData: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );
      // get trending
      final _result = await _downloadService.getDownloadsImage();

      final _state = _result.fold(
        /// fold data sending to the function based on the fold value
        (CoreCommanFailures f) {
          return const SearchState(
            searchResultData: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (List<Downloads> list) {
          return SearchState(
            searchResultData: [],
            idleList: list,
            isLoading: false,
            isError: false,
          );
        },
      );

      emit(_state);
    });

    // search result state
    on<SearchMovie>((event, emit) async {
      // call search movie API
      // show the api result to UI
      log('Searching for ${event.movieQuery}');
      emit(
        const SearchState(
          searchResultData: [],
          idleList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final _result =
          await _searchService.searchMovies(movieQuery: event.movieQuery);
      final _state = _result.fold(
        (CoreCommanFailures failures) {
          return const SearchState(
            searchResultData: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (SearchResponse response) {
          return SearchState(
            searchResultData: response.results,
            idleList: [],
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(_state);
    });
  }
}
