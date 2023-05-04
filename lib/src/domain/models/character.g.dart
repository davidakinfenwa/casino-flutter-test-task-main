// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      name: json['name'] as String,
      image: json['image'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      gender: json['gender'] as String,
      created: DateTime.parse(json['created'] as String),
      origin: Location.fromJson(json['origin'] as Map<String, dynamic>),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      episode:
          (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'gender': instance.gender,
      'image': instance.image,
      'created': instance.created.toIso8601String(),
      'origin': instance.origin,
      'location': instance.location,
      'episode': instance.episode,
    };
