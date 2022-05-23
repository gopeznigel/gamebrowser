import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/blocs/games/game_bloc.dart';

import 'game_list_view.dart';

class AllGameListPage extends StatelessWidget {
  static const String route = '/allGameListPage';

  const AllGameListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          return GameListView(
            type: GameListType.allGames,
            games: state.games!,
          );
        },
      );
}
