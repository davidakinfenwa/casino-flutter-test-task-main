
import 'package:casino_test/src/data/repository_impl/characters_repository_impl.dart';
import 'package:casino_test/src/domain/repository/characters_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


import '../../business/bloc/main_bloc.dart';
import '../../business/snapshot_cache/character_snapshot_cache.dart';
import '../../data/data_source/character_remote_data_source.dart';

import '../network/network_info.dart';

final getIt = GetIt.I;
class MainDIModule {
  void configure(GetIt getIt) {
   
        //  snapshot cache
    getIt.registerFactory<CharacterSnapshotCache>(
        () => CharacterSnapshotCache());

    // blocs
    getIt.registerFactory<MainPageBloc>(
      () => MainPageBloc(charactersRepository: getIt(), snapshotCache: getIt()),
    );

    // repositories
    getIt.registerLazySingleton<CharactersRepository>(
      () => CharactersRepositoryImpl(
          networkInfo: getIt(), remoteDataSource: getIt()),
    );

    // data-sources
    getIt.registerLazySingleton<CharacterRemoteDataSource>(
      () => CharacterRemoteDataSourceImpl(client: getIt()),
    );

    // network
    getIt.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(connectionChecker: getIt()));

    // external
    getIt.registerLazySingleton<Client>(() => Client());
    getIt.registerLazySingleton<InternetConnectionChecker>(
        () => InternetConnectionChecker());
  }
  }


  


