import 'dart:async';
import 'dart:convert';

import 'package:casino_test/src/core/constants.dart';
import 'package:casino_test/src/data/models/character.dart';
import 'package:http/http.dart';

import '../../../core/exceptions/exceptions.dart';
import '../../form/get_page_form.dart';

abstract class CharacterRemoteDataSource {
  Future<CharacterList> getCharacters(
      {required GetCharactersFormParams getCharactersFormParams});
}

class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {
  final Client _client;

  const CharacterRemoteDataSourceImpl({required Client client})
      : _client = client;

  @override
  Future<CharacterList> getCharacters(
      {required GetCharactersFormParams getCharactersFormParams}) async {
    try {
      final _result = await _client
          .get(
            Uri.parse(
                '$BASE_URL/character/?page=${getCharactersFormParams.page}'),
          )
          .timeout(const Duration(seconds: ApiRequests.kRequestTimeout));

      return CharacterList.fromJson(
          json.decode(_result.body) as Map<String, dynamic>);
    } catch (e) {
      if (e is TimeoutException) {
        throw ExceptionType<ExceptionMessage>.serverException(
          code: ExceptionCode.REQUEST_TIMEOUT,
          message: ExceptionMessage.REQUEST_TIMEOUT,
        );
      }

      //* could be appropriately mapped to a return exception-type
      throw ExceptionType<ExceptionMessage>.serverException(
        code: ExceptionCode.UNDEFINED,
        message: ExceptionMessage.parse((e as Exception).toString()),
      );
    }
  }
}
