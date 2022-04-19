import 'package:dartz/dartz.dart';
import '../core/api_failures/api_core_failures.dart';
import 'models/downloads.dart';

//all coming API calls stores in this abstract class
abstract class DownloadService {
  /// [Either] means there is actually two chance to happen while calling the [API] data
  /// in either there is two section that we have to fill
  /// this : [Either<L, R>]
  /// in [Left] declare failure code, in [Right] declare  fetching data
  /// means L for false R for true of the datas
  /// so here is the abstract function for [getDownloadsImage].
  /// to get the images for downloads page of netflix app
  Future<Either<CoreCommanFailures, List<Downloads>>> getDownloadsImage();
}
 