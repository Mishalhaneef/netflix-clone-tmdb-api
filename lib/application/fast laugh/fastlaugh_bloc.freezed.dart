// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fastlaugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FastlaughEventTearOff {
  const _$FastlaughEventTearOff();

  Initialize initialize() {
    return const Initialize();
  }

  AddVideo addVideo({required int id}) {
    return AddVideo(
      id: id,
    );
  }

  RemoveVideo removeVideo({required int id}) {
    return RemoveVideo(
      id: id,
    );
  }
}

/// @nodoc
const $FastlaughEvent = _$FastlaughEventTearOff();

/// @nodoc
mixin _$FastlaughEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int id) addVideo,
    required TResult Function(int id) removeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? addVideo,
    TResult Function(int id)? removeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? addVideo,
    TResult Function(int id)? removeVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddVideo value) addVideo,
    required TResult Function(RemoveVideo value) removeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddVideo value)? addVideo,
    TResult Function(RemoveVideo value)? removeVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddVideo value)? addVideo,
    TResult Function(RemoveVideo value)? removeVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastlaughEventCopyWith<$Res> {
  factory $FastlaughEventCopyWith(
          FastlaughEvent value, $Res Function(FastlaughEvent) then) =
      _$FastlaughEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FastlaughEventCopyWithImpl<$Res>
    implements $FastlaughEventCopyWith<$Res> {
  _$FastlaughEventCopyWithImpl(this._value, this._then);

  final FastlaughEvent _value;
  // ignore: unused_field
  final $Res Function(FastlaughEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$FastlaughEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'FastlaughEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int id) addVideo,
    required TResult Function(int id) removeVideo,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? addVideo,
    TResult Function(int id)? removeVideo,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? addVideo,
    TResult Function(int id)? removeVideo,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddVideo value) addVideo,
    required TResult Function(RemoveVideo value) removeVideo,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddVideo value)? addVideo,
    TResult Function(RemoveVideo value)? removeVideo,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddVideo value)? addVideo,
    TResult Function(RemoveVideo value)? removeVideo,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements FastlaughEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class $AddVideoCopyWith<$Res> {
  factory $AddVideoCopyWith(AddVideo value, $Res Function(AddVideo) then) =
      _$AddVideoCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$AddVideoCopyWithImpl<$Res> extends _$FastlaughEventCopyWithImpl<$Res>
    implements $AddVideoCopyWith<$Res> {
  _$AddVideoCopyWithImpl(AddVideo _value, $Res Function(AddVideo) _then)
      : super(_value, (v) => _then(v as AddVideo));

  @override
  AddVideo get _value => super._value as AddVideo;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(AddVideo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddVideo implements AddVideo {
  const _$AddVideo({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FastlaughEvent.addVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddVideo &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $AddVideoCopyWith<AddVideo> get copyWith =>
      _$AddVideoCopyWithImpl<AddVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int id) addVideo,
    required TResult Function(int id) removeVideo,
  }) {
    return addVideo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? addVideo,
    TResult Function(int id)? removeVideo,
  }) {
    return addVideo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? addVideo,
    TResult Function(int id)? removeVideo,
    required TResult orElse(),
  }) {
    if (addVideo != null) {
      return addVideo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddVideo value) addVideo,
    required TResult Function(RemoveVideo value) removeVideo,
  }) {
    return addVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddVideo value)? addVideo,
    TResult Function(RemoveVideo value)? removeVideo,
  }) {
    return addVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddVideo value)? addVideo,
    TResult Function(RemoveVideo value)? removeVideo,
    required TResult orElse(),
  }) {
    if (addVideo != null) {
      return addVideo(this);
    }
    return orElse();
  }
}

abstract class AddVideo implements FastlaughEvent {
  const factory AddVideo({required int id}) = _$AddVideo;

  int get id;
  @JsonKey(ignore: true)
  $AddVideoCopyWith<AddVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveVideoCopyWith<$Res> {
  factory $RemoveVideoCopyWith(
          RemoveVideo value, $Res Function(RemoveVideo) then) =
      _$RemoveVideoCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$RemoveVideoCopyWithImpl<$Res> extends _$FastlaughEventCopyWithImpl<$Res>
    implements $RemoveVideoCopyWith<$Res> {
  _$RemoveVideoCopyWithImpl(
      RemoveVideo _value, $Res Function(RemoveVideo) _then)
      : super(_value, (v) => _then(v as RemoveVideo));

  @override
  RemoveVideo get _value => super._value as RemoveVideo;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(RemoveVideo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveVideo implements RemoveVideo {
  const _$RemoveVideo({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FastlaughEvent.removeVideo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveVideo &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $RemoveVideoCopyWith<RemoveVideo> get copyWith =>
      _$RemoveVideoCopyWithImpl<RemoveVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(int id) addVideo,
    required TResult Function(int id) removeVideo,
  }) {
    return removeVideo(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? addVideo,
    TResult Function(int id)? removeVideo,
  }) {
    return removeVideo?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(int id)? addVideo,
    TResult Function(int id)? removeVideo,
    required TResult orElse(),
  }) {
    if (removeVideo != null) {
      return removeVideo(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(AddVideo value) addVideo,
    required TResult Function(RemoveVideo value) removeVideo,
  }) {
    return removeVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddVideo value)? addVideo,
    TResult Function(RemoveVideo value)? removeVideo,
  }) {
    return removeVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(AddVideo value)? addVideo,
    TResult Function(RemoveVideo value)? removeVideo,
    required TResult orElse(),
  }) {
    if (removeVideo != null) {
      return removeVideo(this);
    }
    return orElse();
  }
}

abstract class RemoveVideo implements FastlaughEvent {
  const factory RemoveVideo({required int id}) = _$RemoveVideo;

  int get id;
  @JsonKey(ignore: true)
  $RemoveVideoCopyWith<RemoveVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FastlaughStateTearOff {
  const _$FastlaughStateTearOff();

  _Initial call(
      {required List<Downloads> videosList,
      List<int> addedVideos = const [],
      required bool isLoading,
      required bool isError}) {
    return _Initial(
      videosList: videosList,
      addedVideos: addedVideos,
      isLoading: isLoading,
      isError: isError,
    );
  }
}

/// @nodoc
const $FastlaughState = _$FastlaughStateTearOff();

/// @nodoc
mixin _$FastlaughState {
  List<Downloads> get videosList => throw _privateConstructorUsedError;
  List<int> get addedVideos => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastlaughStateCopyWith<FastlaughState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastlaughStateCopyWith<$Res> {
  factory $FastlaughStateCopyWith(
          FastlaughState value, $Res Function(FastlaughState) then) =
      _$FastlaughStateCopyWithImpl<$Res>;
  $Res call(
      {List<Downloads> videosList,
      List<int> addedVideos,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$FastlaughStateCopyWithImpl<$Res>
    implements $FastlaughStateCopyWith<$Res> {
  _$FastlaughStateCopyWithImpl(this._value, this._then);

  final FastlaughState _value;
  // ignore: unused_field
  final $Res Function(FastlaughState) _then;

  @override
  $Res call({
    Object? videosList = freezed,
    Object? addedVideos = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      videosList: videosList == freezed
          ? _value.videosList
          : videosList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      addedVideos: addedVideos == freezed
          ? _value.addedVideos
          : addedVideos // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $FastlaughStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Downloads> videosList,
      List<int> addedVideos,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FastlaughStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? videosList = freezed,
    Object? addedVideos = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_Initial(
      videosList: videosList == freezed
          ? _value.videosList
          : videosList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      addedVideos: addedVideos == freezed
          ? _value.addedVideos
          : addedVideos // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.videosList,
      this.addedVideos = const [],
      required this.isLoading,
      required this.isError});

  @override
  final List<Downloads> videosList;
  @JsonKey()
  @override
  final List<int> addedVideos;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'FastlaughState(videosList: $videosList, addedVideos: $addedVideos, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.videosList, videosList) &&
            const DeepCollectionEquality()
                .equals(other.addedVideos, addedVideos) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(videosList),
      const DeepCollectionEquality().hash(addedVideos),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements FastlaughState {
  const factory _Initial(
      {required List<Downloads> videosList,
      List<int> addedVideos,
      required bool isLoading,
      required bool isError}) = _$_Initial;

  @override
  List<Downloads> get videosList;
  @override
  List<int> get addedVideos;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
