import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:casino_test/src/domain/models/shared/location.dart';
import 'package:casino_test/src/domain/models/shared/page_info.dart';

part 'character.g.dart';

@JsonSerializable()
class Character extends Equatable {
  final String name;
  final String status;
  final String species;
  final String gender;
  final String image;
  final DateTime created;
  final Location origin;
  final Location location;
  final List<String> episode;

  const Character({
    required this.name,
    required this.image,
    required this.status,
    required this.species,
    required this.gender,
    required this.created,
    required this.origin,
    required this.location,
    required this.episode,
  });

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);

  @override
  List<Object> get props {
    return [
      name,
      status,
      species,
      gender,
      image,
      created,
      origin,
      location,
      episode,
    ];
  }

  @override
  String toString() {
    return 'Character(name: $name, status: $status, species: $species, gender: $gender, image: $image, created: $created, origin: $origin, location: $location, episode: $episode)';
  }
}

class CharacterList extends Equatable {
  final PageInfo info;
  final List<Character> characters;

  bool get isEmpty => characters.isEmpty;

  const CharacterList._({required this.info, required this.characters});

  factory CharacterList.fromJson(Map<String, dynamic> json) {
    return CharacterList._(
      info: PageInfo.fromJson(json['info']),
      characters: (json['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e))
          .toList(),
    );
  }

  CharacterList copyWith({PageInfo? info, List<Character>? characters}) {
    return CharacterList._(
        info: info ?? this.info, characters: characters ?? this.characters);
  }

  @override
  List<Object> get props => [info, characters];

  @override
  String toString() => 'CharacterList(info: $info, characters: $characters)';
}
