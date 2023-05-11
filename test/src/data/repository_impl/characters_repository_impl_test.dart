import 'package:casino_test/src/core/exceptions/exceptions.dart';
import 'package:casino_test/src/core/network/network_info.dart';
import 'package:casino_test/src/data/data_source/character_remote_data_source.dart';
import 'package:casino_test/src/data/repository_impl/characters_repository_impl.dart';
import 'package:casino_test/src/domain/form/get_page_form.dart';
import 'package:casino_test/src/domain/models/character.dart';
import 'package:casino_test/src/domain/models/shared/location.dart';
import 'package:casino_test/src/domain/models/shared/page_info.dart';
import 'package:dartz/dartz.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'characters_repository_impl_test.mocks.dart';

class MockCharacterRemoteDataSource extends Mock
    implements CharacterRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

@GenerateMocks([MockCharacterRemoteDataSource, MockNetworkInfo])
void main() {
  late CharactersRepositoryImpl repository;
  late MockMockCharacterRemoteDataSource mockRemoteDataSource;
  late MockMockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockMockCharacterRemoteDataSource();
    mockNetworkInfo = MockMockNetworkInfo();
    repository = CharactersRepositoryImpl(
        remoteDataSource: mockRemoteDataSource, networkInfo: mockNetworkInfo);
  });

  group('getCharacters', () {
    final tFormParams = GetCharactersFormParams(page: 1);
    final tCharacterList = CharacterList(
      info: PageInfo(count: 1, pages: 1, next: null, previous: null),
      characters: [
        Character(
          name: "Rick Sanchez",
          status: "Alive",
          species: "Human",
          gender: "Male",
          image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
          created: DateTime.parse("2017-11-04T18:48:46.250Z"),
          origin: Location(
            name: "Earth (C-137)",
            url: "https://rickandmortyapi.com/api/location/1",
          ),
          location: Location(
            name: "Earth (Replacement Dimension)",
            url: "https://rickandmortyapi.com/api/location/20",
          ),
          episode: [
            "https://rickandmortyapi.com/api/episode/1",
            "https://rickandmortyapi.com/api/episode/2",
          ],
        ),
      ],
    );

    test(
      'should check if the device is online',
      () async {
        // arrange
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        when(mockRemoteDataSource.getCharacters(
                getCharactersFormParams: tFormParams))
            .thenAnswer((_) async => tCharacterList);
        // act
        repository.getCharacters(tFormParams);
        // assert
        verify(mockNetworkInfo.isConnected);
      },
    );

    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      test(
        'should return remote data when the call to remote data source is successful',
        () async {
          // arrange
          when(mockRemoteDataSource.getCharacters(
                  getCharactersFormParams: tFormParams))
              .thenAnswer((_) async => tCharacterList);
          // act
          final result = await repository.getCharacters(tFormParams);
          // assert
          verify(mockRemoteDataSource.getCharacters(
              getCharactersFormParams: tFormParams));
          expect(result, equals(right(tCharacterList)));
        },
      );


    });

    group('device is offline', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });

      test(
        'should return no internet connection failure when there is no internet connection',
        () async {
          // act
          final result = await repository.getCharacters(tFormParams);
          // assert
          verifyZeroInteractions(mockRemoteDataSource);
          expect(
              result,
              equals(left(const Failure.serverFailure(
                  exception: ExceptionMessages.NO_INTERNET_CONNECTION))));
        },
      );
    });
  });
}
