import 'package:casino_test/src/core/exceptions/exceptions.dart';
import 'package:casino_test/src/data/models/character.dart';

import 'package:flutter/material.dart';

import '../bloc/bloc_state/bloc_state.dart';


class CharacterSnapshotCache with ChangeNotifier {
  static Success<Failure<ExceptionMessage>, CharacterList>?
      _successCharacterState;

  Success<Failure<ExceptionMessage>, CharacterList>?
      get successCharacterState => _successCharacterState;
  set successCharacterState(
      Success<Failure<ExceptionMessage>, CharacterList>? state) {
    _successCharacterState = state;
    notifyListeners();
  }

  notifyAllListeners() {
    notifyListeners();
  }
}
