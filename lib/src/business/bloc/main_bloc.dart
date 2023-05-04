import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:casino_test/src/business/snapshot_cache/character_snapshot_cache.dart';

import 'package:casino_test/src/core/exceptions/exceptions.dart';
import 'package:casino_test/src/domain/models/character.dart';
import 'package:casino_test/src/domain/repository/characters_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/form/get_page_form.dart';
import 'bloc_state/bloc_state.dart';

part 'main_event.dart';
part 'main_bloc.freezed.dart';

class MainPageBloc extends Bloc<MainBlocEvent,
    BlocState<Failure<ExceptionMessage>, CharacterList>> {
  final CharacterSnapshotCache _snapshotCache;
  final CharactersRepository _charactersRepository;

  MainPageBloc({
    required CharacterSnapshotCache snapshotCache,
    required CharactersRepository charactersRepository,
  })  : _snapshotCache = snapshotCache,
        _charactersRepository = charactersRepository,
        super(const BlocState<Failure<ExceptionMessage>,
            CharacterList>.initial()) {
    on<MainBlocEvent>(
      (event, emitter) => _getDataOnMainPageCasino(event, emitter),
      transformer: droppable(),
    );
  }

  BlocState<Failure<ExceptionMessage>, CharacterList> get _currentBlocState =>
      super.state;

  bool _hasReachedMax(
          BlocState<Failure<ExceptionMessage>, CharacterList> state) =>
      state is Success<Failure<ExceptionMessage>, CharacterList> &&
      state.hasReachedMax;

  Future<void> _initialStateEventCallback(
    MainBlocEvent event,
    Emitter<BlocState<Failure<ExceptionMessage>, CharacterList>> emit,
  ) async {
    emit(const BlocState<Failure<ExceptionMessage>, CharacterList>.loading());

    final _getCharactersEither = await _charactersRepository
        .getCharacters(event.getCharactersFormParams);

    final _state = _getCharactersEither.fold(
      (failure) => BlocState<Failure<ExceptionMessage>, CharacterList>.error(
          failure: failure),
      (characterList) =>
          BlocState<Failure<ExceptionMessage>, CharacterList>.success(
              hasReachedMax: false, data: characterList),
    );

    if (_state is Success<Failure<ExceptionMessage>, CharacterList>) {
      // cache snapshot
      _snapshotCache.successCharacterState = _state;
    }

    return emit(_state);
  }

  Future<void> _successStateEventCallback(
    MainBlocEvent event,
    Emitter<BlocState<Failure<ExceptionMessage>, CharacterList>> emit,
  ) async {
    final _getCharactersEither = await _charactersRepository
        .getCharacters(event.getCharactersFormParams);

    final _state = _getCharactersEither.fold(
      (failure) => BlocState<Failure<ExceptionMessage>, CharacterList>.error(
          failure: failure),
      (characterList) {
        if (characterList.isEmpty) {
          return (_currentBlocState
                  as Success<Failure<ExceptionMessage>, CharacterList>)
              .copyWith(hasReachedMax: true);
        }

        // merge newly fetched character-list with existing success-state character-list (copied to a new object so no mutation)
        final _previousCharacterList = (_currentBlocState
                as Success<Failure<ExceptionMessage>, CharacterList>)
            .data;

        final _newCharacterList = characterList.copyWith(
          characters: [
            ..._previousCharacterList.characters,
            ...characterList.characters
          ],
        );

        return (_currentBlocState
                as Success<Failure<ExceptionMessage>, CharacterList>)
            .copyWith(hasReachedMax: false, data: _newCharacterList);
      },
    );

    if (_state is Success<Failure<ExceptionMessage>, CharacterList>) {
      // cache snapshot
      _snapshotCache.successCharacterState = _state;
    }

    return emit(_state);
  }

  Future<void> _failureStateEventCallback(
    MainBlocEvent event,
    Emitter<BlocState<Failure<ExceptionMessage>, CharacterList>> emit,
  ) async {
    emit(const BlocState<Failure<ExceptionMessage>, CharacterList>.loading());
    final _getCharactersEither = await _charactersRepository
        .getCharacters(event.getCharactersFormParams);

    final _state = _getCharactersEither.fold(
      (failure) => BlocState<Failure<ExceptionMessage>, CharacterList>.error(
          failure: failure),
      (characterList) {
        final _currentBlocState =
            BlocState<Failure<ExceptionMessage>, CharacterList>.success(
                data: characterList);

        if (characterList.isEmpty) {
          return (_currentBlocState
                  as Success<Failure<ExceptionMessage>, CharacterList>)
              .copyWith(hasReachedMax: true);
        }

        // merge newly fetched character-list with existing success-state character-list (copied to a new object so no mutation)
        CharacterList? _previousCharacterList;

        if (_snapshotCache.successCharacterState != null) {
          _previousCharacterList = (_snapshotCache.successCharacterState
                  as Success<Failure<ExceptionMessage>, CharacterList>)
              .data;
        }

        final _newCharacterList = characterList.copyWith(
          characters: [
            if (_previousCharacterList != null) ...[
              ..._previousCharacterList.characters,
            ],
            ...characterList.characters
          ],
        );

        return (_currentBlocState
                as Success<Failure<ExceptionMessage>, CharacterList>)
            .copyWith(hasReachedMax: false, data: _newCharacterList);
      },
    );

    if (_state is Success<Failure<ExceptionMessage>, CharacterList>) {
      // cache snapshot
      _snapshotCache.successCharacterState = _state;
    }

    return emit(_state);
  }

  Future<void> _getDataOnMainPageCasino(
    MainBlocEvent event,
    Emitter<BlocState<Failure<ExceptionMessage>, CharacterList>> emit,
  ) async {
    if (_hasReachedMax(_currentBlocState)) return;

    await _currentBlocState.maybeMap(
        orElse: () => null,
        initial: (_) => _initialStateEventCallback(event, emit),
        success: (_) => _successStateEventCallback(event, emit),
        error: (_) => _failureStateEventCallback(event, emit));
  }
}
