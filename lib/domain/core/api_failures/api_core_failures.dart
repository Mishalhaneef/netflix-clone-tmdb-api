//comman failures
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_core_failures.freezed.dart';

@freezed
class CoreCommanFailures with _$CoreCommanFailures {
  //*client failures
  //network issue
  //other users side failures
  const factory CoreCommanFailures.clientFailures() = _ClientFailure;
  //*Server side failures
  //server down
  //invalid API's
  //api key changes events
  //other server side problems
  const factory CoreCommanFailures.serverFailures() = _ServerFailure;
}
