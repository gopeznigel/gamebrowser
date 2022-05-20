import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:game_browser_using_bloc/blocs/games/game_bloc.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:game_browser_using_bloc/ui/home/widgets/new_release_tile.dart';

import '../../constants/strings.dart';

class HomePage extends StatelessWidget {
  static const String route = '/homePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameList = BlocBuilder<GameBloc, GameState>(
      buildWhen: ((previous, current) => current.status.isLoaded),
      builder: (context, state) {
        if (state.games == null) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: state.games!.results!.length,
          itemBuilder: (context, i) {
            GameDto game = state.games!.results![i];

            return ListTile(
              leading: SizedBox(
                height: 50,
                width: 50,
                child: Image.network(
                  game.backgroundImage!,
                  fit: BoxFit.contain,
                ),
              ),
              title: Text(
                game.name!,
                style: TextStyles.title,
              ),
              trailing: RatingBar.builder(
                itemSize: 20,
                initialRating: game.rating!,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  debugPrint('Rating: $rating');
                },
              ),
            );
          },
        );
      },
    );

    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  homeTitle,
                  style: TextStyles.header,
                ),
              ),
              BlocBuilder<GameBloc, GameState>(
                builder: (context, state) {
                  if (state.status.isLoaded) {
                    return CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 1,
                        viewportFraction: 0.55,
                        initialPage: 1,
                      ),
                      items: List.generate(
                        5,
                        (int i) => NewReleaseTile(
                          imageUrl: state.games!.results![i].backgroundImage!,
                          name: state.games!.results![i].name!,
                          metascore: state.games!.results![i].metacritic!,
                          releasedDate: state.games!.results![i].released!,
                        ),
                      ),
                    );
                  }

                  return const SizedBox();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
