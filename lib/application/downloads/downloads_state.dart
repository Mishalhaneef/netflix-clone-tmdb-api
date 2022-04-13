part of 'downloads_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  /// class for downloads state
  /// declaared a [bool] variable called [isLoading] as [required].
  /// when the var is ture the loading indicator will show else the page will show.
  /// and another var called [downloads] as [List] of downloads. to send list of downloads
  /// when api called succesfully without an errors.
  /// and another var called [downloadsFailureOrSuccesOption] as [Option].
  /// when that called then we have to declare two value failure or  succes, and
  /// we used [Either] for that. if value is availble then we call fold's second function
  /// that for succes. and send list of downloads, (that actually [downloads] ).
  /// its a non required value. only have to send data when the data is avail
  const factory DownloadState({
    required bool isLoading,
    // if the data is availble without any exception then this variable will have
    // list of donwloads
    required List<Downloads> downloads,
    required Option<Either<CoreCommanFailures, List<Downloads>>>
        downloadsFailureOrSuccesOption,
  }) = _DownloadState;

  /// initial state of download page
  /// setting [isLoading] as true, cos as initial state we need to
  /// show loading screen.
  factory DownloadState.initial() {
    return const DownloadState(
        isLoading: true, downloadsFailureOrSuccesOption: None(), downloads: []);
  }
}
