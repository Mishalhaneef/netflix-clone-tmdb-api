import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/api_failures/api_core_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<CoreCommanFailures, List<Downloads>>>
      getDownloadsImage() async {
    try {
      /// getting downloads api thru dio and assigning to [response] variable
      //* calling image thru DIO . url is on download variable
      final response = await Dio(BaseOptions()).get(ApiEndPoints.downlaod);
      // and checking succes status code . if this right then data will get
      //* after catching and checking errors sending response darta as list from json
      //* to the function
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();

        return Right(downloadList);
      } else {
        // if its an else case from the status code that given as condition on
        // if statement that should be an error from server
        return const Left(CoreCommanFailures.serverFailures());
      }
    } catch (e) {
      // we already checked server side issue . so if there is any issue left
      // that should be the error or issue from client side
      log(e.toString());

      return const Left(CoreCommanFailures.clientFailures());
    }
  }
}