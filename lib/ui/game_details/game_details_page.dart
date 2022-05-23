import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/blocs/view_game/view_game_bloc.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:game_browser_using_bloc/ui/game_details/widgets/game_description_container.dart';
import 'package:game_browser_using_bloc/ui/game_details/widgets/genre_container.dart';
import 'package:game_browser_using_bloc/ui/home/widgets/frosted_container.dart';
import 'package:game_browser_using_bloc/ui/widgets/game_rating.dart';
import 'package:game_browser_using_bloc/utils/custom_number_formatter.dart';

import 'widgets/screenshot_image.dart';

class GameDetailsPage extends StatelessWidget {
  static const String route = '/gameDetailsPage';

  const GameDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewGameBloc, ViewGameState>(
      builder: ((BuildContext context, ViewGameState state) {
        if (state.status.isLoaded) {
          const _minSpace = SizedBox(height: 5, width: 10);

          final _reviews = Row(
            children: [
              GameRating(
                rating: state.gameDetails!.rating,
                size: 15,
              ),
              _minSpace,
              Text(
                CustomNumberFormatter().transformToCompact(double.tryParse(
                        state.gameDetails!.ratingsCount.toString()) ??
                    0),
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
            children: state.gameDetails!.genres!
                .map((genre) => GenreContainer(genre: genre.name!))
                .toList(),
          );

          final _backButton = Container(
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: FrostedContainer(
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 18,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            ),
          );

          final _screenshots = SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: state.gameDto!.screenshots!.map((ss) {
                if (ss.id < 0) {
                  return const SizedBox();
                }

                final double width = MediaQuery.of(context).size.width * 0.6;
                final double height = width * (6 / 9);
                bool isFirstScreenshot = (ss == state.gameDto!.screenshots![1]);

                return Padding(
                  padding: EdgeInsets.only(
                      right: 20, left: !isFirstScreenshot ? 0 : 20),
                  child: ScreenshotImage(
                    width: width,
                    height: height,
                    imageUrl: ss.image,
                  ),
                );
              }).toList(),
            ),
          );

          return Scaffold(
            backgroundColor: AppColors.scaffoldBg,
            body: SafeArea(
              top: false,
              bottom: false,
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      expandedHeight: 200.0,
                      floating: false,
                      pinned: false,
                      elevation: 0.0,
                      automaticallyImplyLeading: false,
                      leading: _backButton,
                      backgroundColor: AppColors.gray,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Hero(
                          tag: state.gameDetails!.backgroundImage!,
                          child: ExtendedImage.network(
                            state.gameDetails!.backgroundImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ];
                },
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                state.gameDetails!.name,
                                style: TextStyles.headerAlt,
                              ),
                            ),
                            _minSpace,
                            _reviews,
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                bottom: 20,
                              ),
                              child: _genres,
                            ),
                            GameDescriptionContainer(
                              key: UniqueKey(),
                              description: state.gameDetails!.description,
                            ),
                          ],
                        ),
                      ),
                      _screenshots,
                    ],
                  ),
                ),
              ),
            ),
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
