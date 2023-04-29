// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocState<F, T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, bool hasReachedMax) success,
    required TResult Function(F failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(F failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<F, T> value) initial,
    required TResult Function(Loading<F, T> value) loading,
    required TResult Function(Success<F, T> value) success,
    required TResult Function(Error<F, T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocStateCopyWith<F, T, $Res> {
  factory $BlocStateCopyWith(
          BlocState<F, T> value, $Res Function(BlocState<F, T>) then) =
      _$BlocStateCopyWithImpl<F, T, $Res>;
}

/// @nodoc
class _$BlocStateCopyWithImpl<F, T, $Res>
    implements $BlocStateCopyWith<F, T, $Res> {
  _$BlocStateCopyWithImpl(this._value, this._then);

  final BlocState<F, T> _value;
  // ignore: unused_field
  final $Res Function(BlocState<F, T>) _then;
}

/// @nodoc
abstract class $InitialCopyWith<F, T, $Res> {
  factory $InitialCopyWith(
          Initial<F, T> value, $Res Function(Initial<F, T>) then) =
      _$InitialCopyWithImpl<F, T, $Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<F, T, $Res>
    extends _$BlocStateCopyWithImpl<F, T, $Res>
    implements $InitialCopyWith<F, T, $Res> {
  _$InitialCopyWithImpl(
      Initial<F, T> _value, $Res Function(Initial<F, T>) _then)
      : super(_value, (v) => _then(v as Initial<F, T>));

  @override
  Initial<F, T> get _value => super._value as Initial<F, T>;
}

/// @nodoc

class _$Initial<F, T> with DiagnosticableTreeMixin implements Initial<F, T> {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlocState<$F, $T>.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BlocState<$F, $T>.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial<F, T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, bool hasReachedMax) success,
    required TResult Function(F failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(F failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<F, T> value) initial,
    required TResult Function(Loading<F, T> value) loading,
    required TResult Function(Success<F, T> value) success,
    required TResult Function(Error<F, T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<F, T> implements BlocState<F, T> {
  const factory Initial() = _$Initial<F, T>;
}

/// @nodoc
abstract class $LoadingCopyWith<F, T, $Res> {
  factory $LoadingCopyWith(
          Loading<F, T> value, $Res Function(Loading<F, T>) then) =
      _$LoadingCopyWithImpl<F, T, $Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<F, T, $Res>
    extends _$BlocStateCopyWithImpl<F, T, $Res>
    implements $LoadingCopyWith<F, T, $Res> {
  _$LoadingCopyWithImpl(
      Loading<F, T> _value, $Res Function(Loading<F, T>) _then)
      : super(_value, (v) => _then(v as Loading<F, T>));

  @override
  Loading<F, T> get _value => super._value as Loading<F, T>;
}

/// @nodoc

class _$Loading<F, T> with DiagnosticableTreeMixin implements Loading<F, T> {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlocState<$F, $T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BlocState<$F, $T>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading<F, T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, bool hasReachedMax) success,
    required TResult Function(F failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(F failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<F, T> value) initial,
    required TResult Function(Loading<F, T> value) loading,
    required TResult Function(Success<F, T> value) success,
    required TResult Function(Error<F, T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<F, T> implements BlocState<F, T> {
  const factory Loading() = _$Loading<F, T>;
}

/// @nodoc
abstract class $SuccessCopyWith<F, T, $Res> {
  factory $SuccessCopyWith(
          Success<F, T> value, $Res Function(Success<F, T>) then) =
      _$SuccessCopyWithImpl<F, T, $Res>;
  $Res call({T data, bool hasReachedMax});
}

/// @nodoc
class _$SuccessCopyWithImpl<F, T, $Res>
    extends _$BlocStateCopyWithImpl<F, T, $Res>
    implements $SuccessCopyWith<F, T, $Res> {
  _$SuccessCopyWithImpl(
      Success<F, T> _value, $Res Function(Success<F, T>) _then)
      : super(_value, (v) => _then(v as Success<F, T>));

  @override
  Success<F, T> get _value => super._value as Success<F, T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? hasReachedMax = freezed,
  }) {
    return _then(Success<F, T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Success<F, T> with DiagnosticableTreeMixin implements Success<F, T> {
  const _$Success({required this.data, this.hasReachedMax = false});

  @override
  final T data;
  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlocState<$F, $T>.success(data: $data, hasReachedMax: $hasReachedMax)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlocState<$F, $T>.success'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('hasReachedMax', hasReachedMax));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Success<F, T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(hasReachedMax));

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<F, T, Success<F, T>> get copyWith =>
      _$SuccessCopyWithImpl<F, T, Success<F, T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, bool hasReachedMax) success,
    required TResult Function(F failure) error,
  }) {
    return success(data, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(F failure)? error,
  }) {
    return success?.call(data, hasReachedMax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, hasReachedMax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<F, T> value) initial,
    required TResult Function(Loading<F, T> value) loading,
    required TResult Function(Success<F, T> value) success,
    required TResult Function(Error<F, T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<F, T> implements BlocState<F, T> {
  const factory Success({required final T data, final bool hasReachedMax}) =
      _$Success<F, T>;

  T get data => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessCopyWith<F, T, Success<F, T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<F, T, $Res> {
  factory $ErrorCopyWith(Error<F, T> value, $Res Function(Error<F, T>) then) =
      _$ErrorCopyWithImpl<F, T, $Res>;
  $Res call({F failure});
}

/// @nodoc
class _$ErrorCopyWithImpl<F, T, $Res>
    extends _$BlocStateCopyWithImpl<F, T, $Res>
    implements $ErrorCopyWith<F, T, $Res> {
  _$ErrorCopyWithImpl(Error<F, T> _value, $Res Function(Error<F, T>) _then)
      : super(_value, (v) => _then(v as Error<F, T>));

  @override
  Error<F, T> get _value => super._value as Error<F, T>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(Error<F, T>(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$Error<F, T> with DiagnosticableTreeMixin implements Error<F, T> {
  const _$Error({required this.failure});

  @override
  final F failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlocState<$F, $T>.error(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlocState<$F, $T>.error'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error<F, T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<F, T, Error<F, T>> get copyWith =>
      _$ErrorCopyWithImpl<F, T, Error<F, T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, bool hasReachedMax) success,
    required TResult Function(F failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(F failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, bool hasReachedMax)? success,
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<F, T> value) initial,
    required TResult Function(Loading<F, T> value) loading,
    required TResult Function(Success<F, T> value) success,
    required TResult Function(Error<F, T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<F, T> implements BlocState<F, T> {
  const factory Error({required final F failure}) = _$Error<F, T>;

  F get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<F, T, Error<F, T>> get copyWith =>
      throw _privateConstructorUsedError;
}
