import 'package:casino_test/src/core/exceptions/exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failure.freezed.dart';

@freezed
class Failure<T> with _$Failure<T> {
  const factory Failure.serverFailure({required ExceptionType<T> exception}) =
      ServerFailure<T>;
  const factory Failure.cacheFailure({required ExceptionType<T> exception}) =
      CacheFailure<T>;
  const factory Failure.platformsFailure(
      {required ExceptionType<T> exception}) = PlatformsFailure<T>;
}
