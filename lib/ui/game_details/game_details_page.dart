import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/blocs/view_game/view_game_bloc.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:game_browser_using_bloc/ui/widgets/game_rating.dart';
import 'package:game_browser_using_bloc/utils/custom_number_formatter.dart';

class GameDetailsPage extends StatelessWidget {
  static const String route = '/gameDetailsPage';

  const GameDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewGameBloc, ViewGameState>(
      builder: ((BuildContext context, ViewGameState state) {
        if (state is GameSelected) {
          const _minSpace = SizedBox(height: 5, width: 10);

          final _reviews = Row(
            children: [
              GameRating(
                rating: state.game.rating!,
                size: 15,
              ),
              _minSpace,
              Text(
                CustomNumberFormatter().transformToCompact(
                    double.tryParse(state.game.ratingsCount.toString()) ?? 0),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.subTitle.copyWith(
                  color: AppColors.gray,
                ),
              ),
            ],
          );

          final _genres = Row(
            children: state.game.genres!
                .map((genre) => _genreContainer(genre.name!))
                .toList(),
          );

          return Scaffold(
            body: SafeArea(
              top: false,
              bottom: false,
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      expandedHeight: 200.0,
                      floating: true,
                      pinned: false,
                      elevation: 0.0,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Hero(
                          tag: state.game.backgroundImage!,
                          child: ExtendedImage.network(
                            state.game.backgroundImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ];
                },
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.game.name!,
                          style: TextStyles.headerAlt,
                        ),
                        _minSpace,
                        _reviews,
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: _genres,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }

        return const CircularProgressIndicator();
      }),
    );
  }

  Widget _genreContainer(String genre) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: AppColors.selected.withOpacity(0.8),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        genre,
        style: TextStyles.subTitle.copyWith(
          color: AppColors.scaffoldBg,
        ),
      ),
    );
  }
}
