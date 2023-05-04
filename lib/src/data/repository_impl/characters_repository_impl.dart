import 'dart:async';
import 'package:casino_test/src/domain/models/character.dart';
import 'package:casino_test/src/domain/repository/characters_repository.dart';
import 'package:dartz/dartz.dart';

import '../../core/exceptions/exceptions.dart';
import '../../core/network/network_info.dart';
import '../../domain/form/get_page_form.dart';
import '../data_source/character_remote_data_source.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  final NetworkInfo _networkInfo;
  final CharacterRemoteDataSource _remoteDataSource;

  const CharactersRepositoryImpl({
    required NetworkInfo networkInfo,
    required CharacterRemoteDataSource remoteDataSource,
  })  : _networkInfo = networkInfo,
        _remoteDataSource = remoteDataSource;

  @override
  Future<Either<Failure<ExceptionMessage>, CharacterList>> getCharacters(
      GetCharactersFormParams getCharactersFormParams) async {
    if (await _networkInfo.isConnected) {
      try {
        final _characterList = await _remoteDataSource.getCharacters(
            getCharactersFormParams: getCharactersFormParams);

        return right(_characterList);
      } on ExceptionType<ExceptionMessage> catch (e) {
        return left(Failure.serverFailure(exception: e));
      }
    }

    return left(const Failure.serverFailure(
        exception: ExceptionMessages.NO_INTERNET_CONNECTION));
  }
}
