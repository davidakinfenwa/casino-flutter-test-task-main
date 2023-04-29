import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_state.freezed.dart';

@freezed
class BlocState<F, T> with _$BlocState<F, T> {
  const factory BlocState.initial() = Initial<F, T>;
  const factory BlocState.loading() = Loading<F, T>;
  const factory BlocState.success({
    required T data,
    @Default(false) bool hasReachedMax,
  }) = Success<F, T>;
  const factory BlocState.error({required F failure}) = Error<F, T>;
}
