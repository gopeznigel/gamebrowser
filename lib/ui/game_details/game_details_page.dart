import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_browser_using_bloc/blocs/screenshot/screenshot_bloc.dart';
import 'package:game_browser_using_bloc/blocs/view_game/view_game_bloc.dart';
import 'package:game_browser_using_bloc/constants/strings.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:game_browser_using_bloc/ui/game_details/details_loading_view.dart';
import 'package:game_browser_using_bloc/ui/game_details/widgets/common_details_container.dart';
import 'package:game_browser_using_bloc/ui/game_details/widgets/game_description_container.dart';
import 'package:game_browser_using_bloc/ui/game_details/widgets/genre_container.dart';
import 'package:game_browser_using_bloc/ui/home/widgets/frosted_container.dart';
import 'package:game_browser_using_bloc/ui/screenshot_viewer/screenshot_viewer_page.dart';
import 'package:game_browser_using_bloc/ui/widgets/game_rating.dart';
import 'package:game_browser_using_bloc/utils/custom_number_formatter.dart';
import 'package:intl/intl.dart';

import 'widgets/screenshot_image.dart';

class GameDetailsPage extends StatelessWidget {
  static const String route = '/gameDetailsPage';

  const GameDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScreenshotBloc(),
      child: BlocBuilder<ViewGameBloc, ViewGameState>(
        builder: ((BuildContext context, ViewGameState state) {
          const _minSpace = SizedBox(height: 5, width: 10);
          const _maxSpace = SizedBox(height: 15, width: 15);

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

          final _reviews = Row(
            children: [
              GameRating(
                rating: state.gameDto!.rating!,
                size: 15,
              ),
              _minSpace,
              Text(
                CustomNumberFormatter().transformToCompact(
                    double.tryParse(state.gameDto!.ratingsCount.toString()) ??
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
                    key: UniqueKey(),
                    width: width,
                    height: height,
                    imageUrl: ss.image,
                    onTap: () {
                      context.read<ScreenshotBloc>().add(SelectScreenshots(
                          screenshots: state.gameDto!.screenshots!.asList(),
                          index: state.gameDto!.screenshots!.indexOf(ss)));

                      Navigator.pushNamed(context, ScreenshotViewerPage.route,
                          arguments: ScreenshotViewerArgs(
                              context.read<ScreenshotBloc>()));
                    },
                  ),
                );
              }).toList(),
            ),
          );

          final _genres = Row(
            children: state.gameDto!.genres!
                .map((genre) => GenreContainer(genre: genre.name!))
                .toList(),
          );

          final _descriptionBody = SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          state.gameDto!.name!,
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
                      state.status.isLoading
                          ? const DetailsLoadingView()
                          : GameDescriptionContainer(
                              key: UniqueKey(),
                              description: state.gameDetails!.description,
                            ),
                    ],
                  ),
                ),
                _screenshots,
                state.status.isLoaded
                    ? Padding(
                        padding: EdgeInsets.only(
                            top: 20,
                            bottom: 20,
                            left: 20,
                            right: MediaQuery.of(context).size.width * 0.2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonDetailsContainer(
                              title: platformsText,
                              details: state.gameDto!.platforms!
                                  .map((p) => p.platform!)
                                  .toList(),
                            ),
                            _maxSpace,
                            CommonDetailsContainer(
                              title: metascoreText,
                              details: [
                                CommonDetailsDto().rebuild((d) => d.name =
                                    state.gameDto!.metacritic?.toString() ??
                                        '0')
                              ],
                            ),
                            _maxSpace,
                            CommonDetailsContainer(
                              title: developerText,
                              details: state.gameDetails!.developers!.asList(),
                            ),
                            _maxSpace,
                            CommonDetailsContainer(
                              title: publisherText,
                              details: state.gameDetails!.publishers!.asList(),
                            ),
                            _maxSpace,
                            CommonDetailsContainer(
                              title: tagsText,
                              details: state.gameDetails!.tags!.asList(),
                            ),
                            _maxSpace,
                            CommonDetailsContainer(
                              title: releasedDateText,
                              details: [
                                CommonDetailsDto().rebuild((d) => d.name =
                                    DateFormat('MMM dd, yyyy').format(
                                        DateFormat('yyyy-MM-dd')
                                            .parse(state.gameDto!.released!)))
                              ],
                            ),
                            _maxSpace,
                            if (state.gameDto!.esrbRating != null)
                              CommonDetailsContainer(
                                title: ageRatingText,
                                details: [state.gameDto!.esrbRating!],
                              ),
                          ],
                        ),
                      )
                    : const SizedBox(),
              ],
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
                      backgroundColor: AppColors.scaffoldBg,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Hero(
                          tag: state.gameDto!.backgroundImage!,
                          child: ExtendedImage.network(
                            state.gameDto!.backgroundImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ];
                },
                body: _descriptionBody,
              ),
            ),
          );
        }),
      ),
    );
  }
}
