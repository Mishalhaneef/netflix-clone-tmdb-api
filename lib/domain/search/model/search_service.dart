import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/api_failures/api_core_failures.dart';
import 'package:netflix_clone/domain/search/model/search_response/search_response.dart';

abstract class SearchService {
  Future<Either<CoreCommanFailures, SearchResponse>> searchMovies({
    required String movieQuery,
  });
}
