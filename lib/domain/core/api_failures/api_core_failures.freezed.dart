// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_core_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoreCommanFailuresTearOff {
  const _$CoreCommanFailuresTearOff();

  _ClientFailure clientFailures() {
    return const _ClientFailure();
  }

  _ServerFailure serverFailures() {
    return const _ServerFailure();
  }
}

/// @nodoc
const $CoreCommanFailures = _$CoreCommanFailuresTearOff();

/// @nodoc
mixin _$CoreCommanFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailures,
    required TResult Function() serverFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailures,
    TResult Function()? serverFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailures,
    TResult Function()? serverFailures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailures,
    required TResult Function(_ServerFailure value) serverFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailures,
    TResult Function(_ServerFailure value)? serverFailures,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailures,
    TResult Function(_ServerFailure value)? serverFailures,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreCommanFailuresCopyWith<$Res> {
  factory $CoreCommanFailuresCopyWith(
          CoreCommanFailures value, $Res Function(CoreCommanFailures) then) =
      _$CoreCommanFailuresCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreCommanFailuresCopyWithImpl<$Res>
    implements $CoreCommanFailuresCopyWith<$Res> {
  _$CoreCommanFailuresCopyWithImpl(this._value, this._then);

  final CoreCommanFailures _value;
  // ignore: unused_field
  final $Res Function(CoreCommanFailures) _then;
}

/// @nodoc
abstract class _$ClientFailureCopyWith<$Res> {
  factory _$ClientFailureCopyWith(
          _ClientFailure value, $Res Function(_ClientFailure) then) =
      __$ClientFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClientFailureCopyWithImpl<$Res>
    extends _$CoreCommanFailuresCopyWithImpl<$Res>
    implements _$ClientFailureCopyWith<$Res> {
  __$ClientFailureCopyWithImpl(
      _ClientFailure _value, $Res Function(_ClientFailure) _then)
      : super(_value, (v) => _then(v as _ClientFailure));

  @override
  _ClientFailure get _value => super._value as _ClientFailure;
}

/// @nodoc

class _$_ClientFailure implements _ClientFailure {
  const _$_ClientFailure();

  @override
  String toString() {
    return 'CoreCommanFailures.clientFailures()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClientFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailures,
    required TResult Function() serverFailures,
  }) {
    return clientFailures();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailures,
    TResult Function()? serverFailures,
  }) {
    return clientFailures?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailures,
    TResult Function()? serverFailures,
    required TResult orElse(),
  }) {
    if (clientFailures != null) {
      return clientFailures();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailures,
    required TResult Function(_ServerFailure value) serverFailures,
  }) {
    return clientFailures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailures,
    TResult Function(_ServerFailure value)? serverFailures,
  }) {
    return clientFailures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailures,
    TResult Function(_ServerFailure value)? serverFailures,
    required TResult orElse(),
  }) {
    if (clientFailures != null) {
      return clientFailures(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements CoreCommanFailures {
  const factory _ClientFailure() = _$_ClientFailure;
}

/// @nodoc
abstract class _$ServerFailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerFailureCopyWithImpl<$Res>
    extends _$CoreCommanFailuresCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure();

  @override
  String toString() {
    return 'CoreCommanFailures.serverFailures()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailures,
    required TResult Function() serverFailures,
  }) {
    return serverFailures();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clientFailures,
    TResult Function()? serverFailures,
  }) {
    return serverFailures?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailures,
    TResult Function()? serverFailures,
    required TResult orElse(),
  }) {
    if (serverFailures != null) {
      return serverFailures();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailures,
    required TResult Function(_ServerFailure value) serverFailures,
  }) {
    return serverFailures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailures,
    TResult Function(_ServerFailure value)? serverFailures,
  }) {
    return serverFailures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailures,
    TResult Function(_ServerFailure value)? serverFailures,
    required TResult orElse(),
  }) {
    if (serverFailures != null) {
      return serverFailures(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements CoreCommanFailures {
  const factory _ServerFailure() = _$_ServerFailure;
}
