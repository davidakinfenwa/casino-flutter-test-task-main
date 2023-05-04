import 'package:dartz/dartz.dart';
import 'package:casino_test/src/core/exceptions/exceptions.dart';
import 'package:casino_test/src/domain/models/character.dart';

import '../form/get_page_form.dart';

abstract class CharactersRepository {
  Future<Either<Failure<ExceptionMessage>, CharacterList>> getCharacters(
    GetCharactersFormParams getCharactersFormParams,
  );
}



