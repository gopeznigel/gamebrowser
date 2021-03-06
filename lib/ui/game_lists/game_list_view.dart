import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/blocs/games/game_bloc.dart';
import 'package:game_browser_using_bloc/blocs/genres/genre_bloc.dart';
import 'package:game_browser_using_bloc/blocs/view_game/view_game_bloc.dart';
import 'package:game_browser_using_bloc/constants/strings.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:game_browser_using_bloc/repositories/game_repository.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:game_browser_using_bloc/ui/game_lists/widgets/category_tile.dart';
import 'package:game_browser_using_bloc/ui/game_lists/widgets/game_tile.dart';
import 'package:game_browser_using_bloc/ui/game_lists/widgets/game_tile_loading.dart';

class GameListView extends StatelessWidget {
  const GameListView({
    Key? key,
    required this.type,
    required this.games,
    this.showCategories = true,
  }) : super(key: key);

  final GameListType type;
  final GamesDto games;
  final bool showCategories;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GenreBloc>(
      create: (context) => GenreBloc(
        repository: context.read<GameRepository>(),
        gameBloc: context.read<GameBloc>(),
      )..add(GetAllGenres()),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 40,
                left: 20,
                bottom: 10,
              ),
              child: BlocBuilder<GenreBloc, GenreState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      Text(
                        type == GameListType.newGames
                            ? allNewReleasesTitle
                            : allGamesTitle,
                        style: TextStyles.header,
                      ),
                      const SizedBox(width: 10),
                      if (state.selectedGenre != null)
                        Text(
                          '(${state.selectedGenre!.name})',
                          style: TextStyles.header,
                        ),
                      const Spacer(),
                      if ((type == GameListType.allGames) &&
                          (state.selectedGenre != null))
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 20,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              context
                                  .read<GenreBloc>()
                                  .add(ClearGenreSelection());
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 2,
                                horizontal: 8,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5,
                                      spreadRadius: 5,
                                      color: Colors.grey.shade200,
                                    )
                                  ]),
                              child: Text(
                                clearText,
                                style: TextStyles.tag.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
            if (showCategories)
              BlocBuilder<GenreBloc, GenreState>(
                builder: (context, state) {
                  if (state.status.isLoaded) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: state.genres!.results!
                            .map(
                              (res) => CategoryTile(
                                urlImage: res.imageBackground!,
                                categoryName: res.name!,
                                selected: state.selectedGenre == res,
                                onTap: () {
                                  debugPrint(
                                      'Getting games with genre[${res.name}]');

                                  // load games by selected category
                                  context
                                      .read<GenreBloc>()
                                      .add(SelectGenre(selectedGenre: res));
                                },
                              ),
                            )
                            .toList(),
                      ),
                    );
                  }

                  return const SizedBox();
                },
              ),
            BlocBuilder<GameBloc, GameState>(
              builder: (context, state) {
                if (state.status.isLoading) {
                  return Expanded(
                    child: ListView(
                      children: List.generate(
                        10,
                        (index) => const GameTileLoading(),
                      ),
                    ),
                  );
                }

                return Expanded(
                  child: ListView(
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
              },
            ),
          ],
        ),
      ),
    );
  }
}

enum GameListType {
  newGames,
  allGames,
}
