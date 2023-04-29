// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainBlocEvent {
  GetCharactersFormParams get getCharactersFormParams =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCharactersFormParams getCharactersFormParams)
        getCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GetCharactersFormParams getCharactersFormParams)?
        getCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCharactersFormParams getCharactersFormParams)?
        getCharacters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainBlocEventCopyWith<MainBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainBlocEventCopyWith<$Res> {
  factory $MainBlocEventCopyWith(
          MainBlocEvent value, $Res Function(MainBlocEvent) then) =
      _$MainBlocEventCopyWithImpl<$Res>;
  $Res call({GetCharactersFormParams getCharactersFormParams});
}

/// @nodoc
class _$MainBlocEventCopyWithImpl<$Res>
    implements $MainBlocEventCopyWith<$Res> {
  _$MainBlocEventCopyWithImpl(this._value, this._then);

  final MainBlocEvent _value;
  // ignore: unused_field
  final $Res Function(MainBlocEvent) _then;

  @override
  $Res call({
    Object? getCharactersFormParams = freezed,
  }) {
    return _then(_value.copyWith(
      getCharactersFormParams: getCharactersFormParams == freezed
          ? _value.getCharactersFormParams
          : getCharactersFormParams // ignore: cast_nullable_to_non_nullable
              as GetCharactersFormParams,
    ));
  }
}

/// @nodoc
abstract class _$GetCharactersCopyWith<$Res>
    implements $MainBlocEventCopyWith<$Res> {
  factory _$GetCharactersCopyWith(
          _GetCharacters value, $Res Function(_GetCharacters) then) =
      __$GetCharactersCopyWithImpl<$Res>;
  @override
  $Res call({GetCharactersFormParams getCharactersFormParams});
}

/// @nodoc
class __$GetCharactersCopyWithImpl<$Res>
    extends _$MainBlocEventCopyWithImpl<$Res>
    implements _$GetCharactersCopyWith<$Res> {
  __$GetCharactersCopyWithImpl(
      _GetCharacters _value, $Res Function(_GetCharacters) _then)
      : super(_value, (v) => _then(v as _GetCharacters));

  @override
  _GetCharacters get _value => super._value as _GetCharacters;

  @override
  $Res call({
    Object? getCharactersFormParams = freezed,
  }) {
    return _then(_GetCharacters(
      getCharactersFormParams: getCharactersFormParams == freezed
          ? _value.getCharactersFormParams
          : getCharactersFormParams // ignore: cast_nullable_to_non_nullable
              as GetCharactersFormParams,
    ));
  }
}

/// @nodoc

class _$_GetCharacters implements _GetCharacters {
  const _$_GetCharacters({required this.getCharactersFormParams});

  @override
  final GetCharactersFormParams getCharactersFormParams;

  @override
  String toString() {
    return 'MainBlocEvent.getCharacters(getCharactersFormParams: $getCharactersFormParams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCharacters &&
            const DeepCollectionEquality().equals(
                other.getCharactersFormParams, getCharactersFormParams));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(getCharactersFormParams));

  @JsonKey(ignore: true)
  @override
  _$GetCharactersCopyWith<_GetCharacters> get copyWith =>
      __$GetCharactersCopyWithImpl<_GetCharacters>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetCharactersFormParams getCharactersFormParams)
        getCharacters,
  }) {
    return getCharacters(getCharactersFormParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(GetCharactersFormParams getCharactersFormParams)?
        getCharacters,
  }) {
    return getCharacters?.call(getCharactersFormParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetCharactersFormParams getCharactersFormParams)?
        getCharacters,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(getCharactersFormParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
  }) {
    return getCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
  }) {
    return getCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(this);
    }
    return orElse();
  }
}

abstract class _GetCharacters implements MainBlocEvent {
  const factory _GetCharacters(
          {required final GetCharactersFormParams getCharactersFormParams}) =
      _$_GetCharacters;

  @override
  GetCharactersFormParams get getCharactersFormParams =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetCharactersCopyWith<_GetCharacters> get copyWith =>
      throw _privateConstructorUsedError;
}
