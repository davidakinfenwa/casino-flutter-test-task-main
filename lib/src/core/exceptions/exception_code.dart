// ignore_for_file: constant_identifier_names

import 'package:casino_test/src/core/exceptions/exceptions.dart';

class ExceptionCode {
  final String _code;

  const ExceptionCode._(this._code);

  static const NOT_FOUND = ExceptionCode._('NOT_FOUND');
  static const EXISTING = ExceptionCode._('EXISTING');
  static const CANCELLED = ExceptionCode._('CANCELLED');
  static const UNDEFINED = ExceptionCode._('UNDEFINED');
  static const CONTACT = ExceptionCode._('CONTACT');
  static const REQUEST_TIMEOUT = ExceptionCode._('REQUEST_TIMEOUT');
  static const NO_INTERNET_CONNECTION =
      ExceptionCode._('NO_INTERNET_CONNECTION');

  @override
  String toString() => _code;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ExceptionCode && other._code == _code;
  }

  @override
  int get hashCode => _code.hashCode;
}

class ExceptionMessage {
  final String _message;

  const ExceptionMessage._(this._message);

  static const NOT_FOUND = ExceptionMessage._('Resource cannot be found!');
  static const EXISTING = ExceptionMessage._('Resource already exists!');
  static const CANCELLED = ExceptionMessage._('This action was cancelled!');
  static const CONTACT =
      ExceptionMessage._('Permission denied to access device contacts!');
  static const UNDEFINED =
      ExceptionMessage._('Undefined exception has occured!');
  static const REQUEST_TIMEOUT = ExceptionMessage._('Request timeout!');
  static const NO_INTERNET_CONNECTION =
      ExceptionMessage._('Sorry! You are not connected to the internet!');

  factory ExceptionMessage.parse(String message) {
    return ExceptionMessage._(message);
  }

  @override
  String toString() => _message;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ExceptionMessage && other._message == _message;
  }

  @override
  int get hashCode => _message.hashCode;
}

class ExceptionMessages {
  static const NO_INTERNET_CONNECTION =
      ExceptionType<ExceptionMessage>.serverException(
    code: ExceptionCode.NO_INTERNET_CONNECTION,
    message: ExceptionMessage.NO_INTERNET_CONNECTION,
  );
}
