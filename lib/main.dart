import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:game_browser_using_bloc/blocs/games/game_bloc.dart';
import 'package:game_browser_using_bloc/blocs/generes/genre_bloc.dart';
import 'package:game_browser_using_bloc/repositories/game_repository.dart';
import 'package:game_browser_using_bloc/services/game_service.dart';
import 'package:game_browser_using_bloc/ui/home/home_page.dart';
// import 'package:game_browser_using_bloc/ui/splash_page.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => GameRepository(service: GameService()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<GameBloc>(
            create: (context) => GameBloc(
              repository: context.read<GameRepository>(),
            )..add(GetAllGames()),
          ),
          BlocProvider<GenreBloc>(
            create: (context) => GenreBloc(
              repository: context.read<GameRepository>(),
            )..add(GetAllGenres()),
          ),
        ],
        child: const MaterialApp(
          // initialRoute: HomePage.route,
          home: HomePage(),
        ),
      ),
    );
  }
}
