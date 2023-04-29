import 'package:dartz/dartz.dart';
import 'package:casino_test/src/core/exceptions/exceptions.dart';
import 'package:casino_test/src/data/models/character.dart';

import '../../data/form/get_page_form.dart';

abstract class CharactersRepository {
  Future<Either<Failure<ExceptionMessage>, CharacterList>> getCharacters(
    GetCharactersFormParams getCharactersFormParams,
  );
}



