import 'package:equatable/equatable.dart';

class GetCharactersFormParams extends Equatable {
  final int page;

  const GetCharactersFormParams({required this.page});

  @override
  List<Object> get props => [page];

  @override
  String toString() => 'GetCharactersFormParams(page: $page)';
}