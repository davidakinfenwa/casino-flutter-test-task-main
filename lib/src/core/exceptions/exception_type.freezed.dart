// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exception_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExceptionType<T> {
  int? get responseNo => throw _privateConstructorUsedError;
  bool get response => throw _privateConstructorUsedError;
  ExceptionCode get code => throw _privateConstructorUsedError;
  T get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        serverException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        cacheException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        platformsException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException<T> value) serverException,
    required TResult Function(CacheException<T> value) cacheException,
    required TResult Function(PlatformsException<T> value) platformsException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExceptionTypeCopyWith<T, ExceptionType<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceptionTypeCopyWith<T, $Res> {
  factory $ExceptionTypeCopyWith(
          ExceptionType<T> value, $Res Function(ExceptionType<T>) then) =
      _$ExceptionTypeCopyWithImpl<T, $Res>;
  $Res call({int? responseNo, bool response, ExceptionCode code, T message});
}

/// @nodoc
class _$ExceptionTypeCopyWithImpl<T, $Res>
    implements $ExceptionTypeCopyWith<T, $Res> {
  _$ExceptionTypeCopyWithImpl(this._value, this._then);

  final ExceptionType<T> _value;
  // ignore: unused_field
  final $Res Function(ExceptionType<T>) _then;

  @override
  $Res call({
    Object? responseNo = freezed,
    Object? response = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      responseNo: responseNo == freezed
          ? _value.responseNo
          : responseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ExceptionCode,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $ServerExceptionCopyWith<T, $Res>
    implements $ExceptionTypeCopyWith<T, $Res> {
  factory $ServerExceptionCopyWith(
          ServerException<T> value, $Res Function(ServerException<T>) then) =
      _$ServerExceptionCopyWithImpl<T, $Res>;
  @override
  $Res call({int? responseNo, bool response, ExceptionCode code, T message});
}

/// @nodoc
class _$ServerExceptionCopyWithImpl<T, $Res>
    extends _$ExceptionTypeCopyWithImpl<T, $Res>
    implements $ServerExceptionCopyWith<T, $Res> {
  _$ServerExceptionCopyWithImpl(
      ServerException<T> _value, $Res Function(ServerException<T>) _then)
      : super(_value, (v) => _then(v as ServerException<T>));

  @override
  ServerException<T> get _value => super._value as ServerException<T>;

  @override
  $Res call({
    Object? responseNo = freezed,
    Object? response = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(ServerException<T>(
      responseNo: responseNo == freezed
          ? _value.responseNo
          : responseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ExceptionCode,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ServerException<T>
    with DiagnosticableTreeMixin
    implements ServerException<T> {
  const _$ServerException(
      {this.responseNo,
      this.response = true,
      required this.code,
      required this.message});

  @override
  final int? responseNo;
  @override
  @JsonKey()
  final bool response;
  @override
  final ExceptionCode code;
  @override
  final T message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExceptionType<$T>.serverException(responseNo: $responseNo, response: $response, code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExceptionType<$T>.serverException'))
      ..add(DiagnosticsProperty('responseNo', responseNo))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerException<T> &&
            const DeepCollectionEquality()
                .equals(other.responseNo, responseNo) &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(responseNo),
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ServerExceptionCopyWith<T, ServerException<T>> get copyWith =>
      _$ServerExceptionCopyWithImpl<T, ServerException<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        serverException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        cacheException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        platformsException,
  }) {
    return serverException(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
  }) {
    return serverException?.call(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(responseNo, response, code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException<T> value) serverException,
    required TResult Function(CacheException<T> value) cacheException,
    required TResult Function(PlatformsException<T> value) platformsException,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class ServerException<T> implements ExceptionType<T> {
  const factory ServerException(
      {final int? responseNo,
      final bool response,
      required final ExceptionCode code,
      required final T message}) = _$ServerException<T>;

  @override
  int? get responseNo => throw _privateConstructorUsedError;
  @override
  bool get response => throw _privateConstructorUsedError;
  @override
  ExceptionCode get code => throw _privateConstructorUsedError;
  @override
  T get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ServerExceptionCopyWith<T, ServerException<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheExceptionCopyWith<T, $Res>
    implements $ExceptionTypeCopyWith<T, $Res> {
  factory $CacheExceptionCopyWith(
          CacheException<T> value, $Res Function(CacheException<T>) then) =
      _$CacheExceptionCopyWithImpl<T, $Res>;
  @override
  $Res call({int? responseNo, bool response, ExceptionCode code, T message});
}

/// @nodoc
class _$CacheExceptionCopyWithImpl<T, $Res>
    extends _$ExceptionTypeCopyWithImpl<T, $Res>
    implements $CacheExceptionCopyWith<T, $Res> {
  _$CacheExceptionCopyWithImpl(
      CacheException<T> _value, $Res Function(CacheException<T>) _then)
      : super(_value, (v) => _then(v as CacheException<T>));

  @override
  CacheException<T> get _value => super._value as CacheException<T>;

  @override
  $Res call({
    Object? responseNo = freezed,
    Object? response = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(CacheException<T>(
      responseNo: responseNo == freezed
          ? _value.responseNo
          : responseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ExceptionCode,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CacheException<T>
    with DiagnosticableTreeMixin
    implements CacheException<T> {
  const _$CacheException(
      {this.responseNo,
      this.response = true,
      required this.code,
      required this.message});

  @override
  final int? responseNo;
  @override
  @JsonKey()
  final bool response;
  @override
  final ExceptionCode code;
  @override
  final T message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExceptionType<$T>.cacheException(responseNo: $responseNo, response: $response, code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExceptionType<$T>.cacheException'))
      ..add(DiagnosticsProperty('responseNo', responseNo))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CacheException<T> &&
            const DeepCollectionEquality()
                .equals(other.responseNo, responseNo) &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(responseNo),
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $CacheExceptionCopyWith<T, CacheException<T>> get copyWith =>
      _$CacheExceptionCopyWithImpl<T, CacheException<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        serverException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        cacheException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        platformsException,
  }) {
    return cacheException(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
  }) {
    return cacheException?.call(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(responseNo, response, code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException<T> value) serverException,
    required TResult Function(CacheException<T> value) cacheException,
    required TResult Function(PlatformsException<T> value) platformsException,
  }) {
    return cacheException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
  }) {
    return cacheException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(this);
    }
    return orElse();
  }
}

abstract class CacheException<T> implements ExceptionType<T> {
  const factory CacheException(
      {final int? responseNo,
      final bool response,
      required final ExceptionCode code,
      required final T message}) = _$CacheException<T>;

  @override
  int? get responseNo => throw _privateConstructorUsedError;
  @override
  bool get response => throw _privateConstructorUsedError;
  @override
  ExceptionCode get code => throw _privateConstructorUsedError;
  @override
  T get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $CacheExceptionCopyWith<T, CacheException<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatformsExceptionCopyWith<T, $Res>
    implements $ExceptionTypeCopyWith<T, $Res> {
  factory $PlatformsExceptionCopyWith(PlatformsException<T> value,
          $Res Function(PlatformsException<T>) then) =
      _$PlatformsExceptionCopyWithImpl<T, $Res>;
  @override
  $Res call({int? responseNo, bool response, ExceptionCode code, T message});
}

/// @nodoc
class _$PlatformsExceptionCopyWithImpl<T, $Res>
    extends _$ExceptionTypeCopyWithImpl<T, $Res>
    implements $PlatformsExceptionCopyWith<T, $Res> {
  _$PlatformsExceptionCopyWithImpl(
      PlatformsException<T> _value, $Res Function(PlatformsException<T>) _then)
      : super(_value, (v) => _then(v as PlatformsException<T>));

  @override
  PlatformsException<T> get _value => super._value as PlatformsException<T>;

  @override
  $Res call({
    Object? responseNo = freezed,
    Object? response = freezed,
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(PlatformsException<T>(
      responseNo: responseNo == freezed
          ? _value.responseNo
          : responseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ExceptionCode,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PlatformsException<T>
    with DiagnosticableTreeMixin
    implements PlatformsException<T> {
  const _$PlatformsException(
      {this.responseNo,
      this.response = true,
      required this.code,
      required this.message});

  @override
  final int? responseNo;
  @override
  @JsonKey()
  final bool response;
  @override
  final ExceptionCode code;
  @override
  final T message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExceptionType<$T>.platformsException(responseNo: $responseNo, response: $response, code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExceptionType<$T>.platformsException'))
      ..add(DiagnosticsProperty('responseNo', responseNo))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlatformsException<T> &&
            const DeepCollectionEquality()
                .equals(other.responseNo, responseNo) &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(responseNo),
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $PlatformsExceptionCopyWith<T, PlatformsException<T>> get copyWith =>
      _$PlatformsExceptionCopyWithImpl<T, PlatformsException<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        serverException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        cacheException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        platformsException,
  }) {
    return platformsException(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
  }) {
    return platformsException?.call(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
    required TResult orElse(),
  }) {
    if (platformsException != null) {
      return platformsException(responseNo, response, code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException<T> value) serverException,
    required TResult Function(CacheException<T> value) cacheException,
    required TResult Function(PlatformsException<T> value) platformsException,
  }) {
    return platformsException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
  }) {
    return platformsException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
    required TResult orElse(),
  }) {
    if (platformsException != null) {
      return platformsException(this);
    }
    return orElse();
  }
}

abstract class PlatformsException<T> implements ExceptionType<T> {
  const factory PlatformsException(
      {final int? responseNo,
      final bool response,
      required final ExceptionCode code,
      required final T message}) = _$PlatformsException<T>;

  @override
  int? get responseNo => throw _privateConstructorUsedError;
  @override
  bool get response => throw _privateConstructorUsedError;
  @override
  ExceptionCode get code => throw _privateConstructorUsedError;
  @override
  T get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PlatformsExceptionCopyWith<T, PlatformsException<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
