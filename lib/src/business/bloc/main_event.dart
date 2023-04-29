part of 'main_bloc.dart';

@freezed
class MainBlocEvent with _$MainBlocEvent {
  const factory MainBlocEvent.getCharacters(
          {required GetCharactersFormParams getCharactersFormParams}) =
      _GetCharacters;
}
