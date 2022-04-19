import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    /// in API the poster path data json key name is "poster_path".
    /// and the variable name should be the same name as API's json key
    /// name. but we have to name camelcase in var name. so the json key name
    /// store in JsoneKey annotation class. and now we can use the variable name
    /// whatever we want.
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "title") required String? title,
  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
