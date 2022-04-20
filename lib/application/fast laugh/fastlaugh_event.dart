part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughEvent with _$FastlaughEvent {
  const factory FastlaughEvent.initialize() = Initialize;
  const factory FastlaughEvent.addVideo({
    required int id,
  }) = AddVideo;
  const factory FastlaughEvent.removeVideo({
    required int id,
  }) = RemoveVideo;
}
