import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/blocs/view_game/view_game_bloc.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:game_browser_using_bloc/ui/game_lists/widgets/game_tile.dart';

class GameListView extends StatelessWidget {
  const GameListView({Key? key, required this.type, required this.games})
      : super(key: key);

  final GameListType type;
  final GamesDto games;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
          games.results!.length,
          (int i) => GameTile(
            key: UniqueKey(),
            rating: games.results![i].rating!,
            imageUrl: games.results![i].backgroundImage!,
            name: games.results![i].name!,
            reviewCount: games.results![i].ratingsCount!,
            onTap: () => context
                .read<ViewGameBloc>()
                .add(SelectGameToView(gameDto: games.results![i])),
          ),
        ),
      ),
    );
  }
}

enum GameListType {
  newGames,
  allGames,
}
