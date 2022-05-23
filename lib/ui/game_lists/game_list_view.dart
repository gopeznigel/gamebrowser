import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/blocs/genres/genre_bloc.dart';
import 'package:game_browser_using_bloc/blocs/view_game/view_game_bloc.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:game_browser_using_bloc/repositories/game_repository.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:game_browser_using_bloc/ui/game_lists/widgets/game_tile.dart';

class GameListView extends StatelessWidget {
  const GameListView({Key? key, required this.type, required this.games})
      : super(key: key);

  final GameListType type;
  final GamesDto games;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GenreBloc>(
      create: (context) => GenreBloc(repository: context.read<GameRepository>())
        ..add(GetAllGenres()),
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
              child: Text(
                type == GameListType.newGames ? 'New Releases' : 'All Games',
                style: TextStyles.header,
              ),
            ),
            BlocBuilder<GenreBloc, GenreState>(
              builder: (context, state) {
                if (state.status.isLoaded) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: state.genres!.results!
                            .map((res) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: _genreSelector(
                                      res.imageBackground!, res.name!),
                                ))
                            .toList()),
                  );
                }

                return const SizedBox();
              },
            ),
            Expanded(
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _genreSelector(String urlImage, String name) {
    return SizedBox(
      height: 60,
      width: 140,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            child: Container(
              height: 60,
              width: 60,
              color: AppColors.gray,
              child: Image.network(
                urlImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 80,
            height: 60,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                name,
                style: TextStyles.subTitle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum GameListType {
  newGames,
  allGames,
}
