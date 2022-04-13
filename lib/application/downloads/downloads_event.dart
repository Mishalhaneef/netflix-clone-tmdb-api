part of 'downloads_bloc.dart';

@freezed
class DownloadsEvent with _$DownloadsEvent {
  /// event to get image for donwload screen
  const factory DownloadsEvent.getDownloadsImage() = _GetDownloadsImage;
}
