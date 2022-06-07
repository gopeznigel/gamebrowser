import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:game_browser_using_bloc/blocs/games/game_bloc.dart';
import 'package:game_browser_using_bloc/blocs/new_games/new_game_bloc.dart';
import 'package:game_browser_using_bloc/blocs/view_game/view_game_bloc.dart';
import 'package:game_browser_using_bloc/repositories/game_repository.dart';
import 'package:game_browser_using_bloc/services/game_service.dart';
import 'package:game_browser_using_bloc/ui/game_details/game_details_page.dart';
import 'package:game_browser_using_bloc/ui/game_lists/all_game_list_page.dart';
import 'package:game_browser_using_bloc/ui/game_lists/new_game_list_page.dart';
import 'package:game_browser_using_bloc/ui/home/home_page.dart';
import 'package:game_browser_using_bloc/ui/screenshot_viewer/screenshot_viewer_page.dart';

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
            lazy: false,
          ),
          BlocProvider<NewGameBloc>(
            create: (context) => NewGameBloc(
              repository: context.read<GameRepository>(),
            )..add(GetAllNewGames()),
            lazy: false,
          ),
          BlocProvider<ViewGameBloc>(
            create: (context) => ViewGameBloc(
              repository: context.read<GameRepository>(),
            ),
            lazy: false,
          ),
        ],
        child: MaterialApp(
          routes: {
            GameDetailsPage.route: (_) => const GameDetailsPage(),
            AllGameListPage.route: (_) => const AllGameListPage(),
            NewGameListPage.route: (_) => const NewGameListPage(),
            ScreenshotViewerPage.route: (_) => const ScreenshotViewerPage(),
          },
          home: const HomePage(),
        ),
      ),
    );
  }
}
