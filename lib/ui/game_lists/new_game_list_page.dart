import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/blocs/new_games/new_game_bloc.dart';
import 'package:game_browser_using_bloc/ui/game_lists/game_list_view.dart';

class NewGameListPage extends StatelessWidget {
  static const String route = '/newGameListPage';

  const NewGameListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<NewGameBloc, NewGameState>(
        builder: (context, state) {
          return GameListView(
            type: GameListType.newGames,
            games: state.games!,
            showCategories: false,
          );
        },
      );
}
