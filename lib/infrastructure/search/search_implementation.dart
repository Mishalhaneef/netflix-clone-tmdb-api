import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/search/model/search_response/search_response.dart';
import 'package:netflix_clone/domain/core/api_failures/api_core_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/search/model/search_service.dart';

@LazySingleton(as: SearchService)
class SearchImplementation implements SearchService {
  @override
  Future<Either<CoreCommanFailures, SearchResponse>> searchMovies( 
    {required String movieQuery}) async {
    try {
      final response = await Dio(BaseOptions()).get(
        ApiEndPoints.search,
        queryParameters: {'query': movieQuery},
      );
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchResult = SearchResponse.fromJson(response.data);
        // log('$searchResult');
        return Right(searchResult);
      } else {
        return const Left(CoreCommanFailures.serverFailures());
      }
    } catch (e) {
      log(e.toString());
      return const Left(CoreCommanFailures.clientFailures());
    }
  }
}
