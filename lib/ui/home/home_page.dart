import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/blocs/games/game_bloc.dart';
import 'package:game_browser_using_bloc/blocs/new_games/new_game_bloc.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:game_browser_using_bloc/ui/home/loading_home_view.dart';
import 'package:game_browser_using_bloc/ui/home/widgets/new_release_tile.dart';

import '../../constants/strings.dart';

class HomePage extends StatelessWidget {
  static const String route = '/homePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<NewGameBloc, NewGameState>(
        builder: (context, newGameState) {
          return BlocBuilder<GameBloc, GameState>(
            builder: (BuildContext context, GameState allGameState) {
              Widget _view = const SizedBox();

              if (newGameState.status.isLoaded &&
                  allGameState.status.isLoaded) {
                _view = _home(context, newGameState);
              } else {
                _view = const LoadingHomeView();
              }

              return Scaffold(
                backgroundColor: AppColors.scaffoldBg,
                body: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: _view,
                  ),
                ),
              );
            },
          );
        },
      );

  Widget _home(BuildContext context, NewGameState state) {
    final leftPadding = MediaQuery.of(context).size.width * 0.1;
    final _carouselHeight = MediaQuery.of(context).size.width * 0.9;

    final _carousel = Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: _carouselHeight,
        ),
        Positioned(
          left: leftPadding * -1,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.7,
                height: _carouselHeight,
                enableInfiniteScroll: false,
                clipBehavior: Clip.none,
              ),
              items: List.generate(
                7,
                (int i) => NewReleaseTile(
                  key: Key(i.toString()),
                  imageUrl: state.games!.results![i].backgroundImage!,
                  name: state.games!.results![i].name!,
                  metascore: state.games!.results![i].metacritic,
                  releasedDate: state.games!.results![i].released!,
                ),
              ),
            ),
          ),
        ),
      ],
    );

    final _title = Padding(
      padding: EdgeInsets.only(left: leftPadding),
      child: Text(
        homeTitle,
        style: TextStyles.header,
      ),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title,
        _carousel,
      ],
    );
  }
}
