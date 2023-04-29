import 'package:casino_test/src/business/bloc/main_bloc.dart';
import 'package:casino_test/src/business/snapshot_cache/character_snapshot_cache.dart';
import 'package:casino_test/src/core/bloc/simple_bloc_observer.dart';
import 'package:casino_test/src/core/constants.dart';
import 'package:casino_test/src/core/di/main_di_module.dart';
import 'package:casino_test/src/data/form/get_page_form.dart';
import 'package:casino_test/src/presentation/ui/character_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // initialize DI
  MainDIModule().configure(GetIt.I);
  // ignore: deprecated_member_use
  BlocOverrides.runZoned(
    () => runApp(MyApp()),
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CharacterSnapshotCache>(
            create: (_) => getIt<CharacterSnapshotCache>()),
      ],
      child: MaterialApp(
        title: 'Test app',
        debugShowCheckedModeBanner: false,
        home: BlocProvider<MainPageBloc>(
          create: (context) {
            final _params = GetCharactersFormParams(page: INITIAL_PAGE);
            return getIt<MainPageBloc>()
              ..add(
                MainBlocEvent.getCharacters(getCharactersFormParams: _params),
              );
          },
          child: CharactersScreen(),
        ),
      ),
    );
  }
}
