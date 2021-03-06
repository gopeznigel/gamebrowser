import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/constants/strings.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:game_browser_using_bloc/ui/home/widgets/frosted_container.dart';
import 'package:game_browser_using_bloc/ui/home/widgets/tag_container.dart';
import 'package:game_browser_using_bloc/ui/widgets/game_rating.dart';
import 'package:game_browser_using_bloc/utils/custom_number_formatter.dart';
import 'package:shimmer/shimmer.dart';

class GameCollectionTile extends StatefulWidget {
  const GameCollectionTile({
    Key? key,
    required this.size,
    required this.imageUrl,
    required this.name,
    required this.reviewCount,
    required this.onTap,
    this.metaScore,
    this.rating,
  }) : super(key: key);

  final double size;
  final String imageUrl;
  final int? metaScore;
  final double? rating;
  final String name;
  final int reviewCount;
  final void Function()? onTap;

  @override
  State<GameCollectionTile> createState() => _GameCollectionTileState();
}

class _GameCollectionTileState extends State<GameCollectionTile>
    with AutomaticKeepAliveClientMixin {
  ExtendedNetworkImageProvider? _provider;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    _provider = ExtendedNetworkImageProvider(widget.imageUrl, cache: true);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_provider != null) {
      precacheImage(_provider!, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final _gameImage = Hero(
      tag: widget.imageUrl,
      child: ExtendedImage(
        image: _provider!,
        fit: BoxFit.cover,
        loadStateChanged: (ExtendedImageState state) {
          switch (state.extendedImageLoadState) {
            case LoadState.loading:
              return Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Container(
                  color: Colors.white,
                ),
              );
            default:
              return null;
          }
        },
      ),
    );

    final _info = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.name,
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.title.copyWith(
            color: Colors.white,
          ),
        ),
        Text(
          '(${CustomNumberFormatter().transformToCompact(double.tryParse(widget.reviewCount.toString()) ?? 0)} $reviewsText)',
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.subTitle.copyWith(
            color: Colors.white,
          ),
        ),
        if (widget.rating != null)
          GameRating(
            rating: widget.rating!,
          ),
      ],
    );

    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: widget.size,
            width: widget.size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: _provider != null
                  ? Stack(
                      alignment: Alignment.center,
                      fit: StackFit.expand,
                      children: [
                        _gameImage,
                        Positioned(
                          bottom: 0,
                          child: FrostedContainer(
                            height: 60,
                            width: widget.size,
                            child: _info,
                          ),
                        ),
                      ],
                    )
                  : Container(
                      color: Colors.grey,
                    ),
            ),
          ),
          if (widget.metaScore != null)
            Positioned(
              top: -6.5,
              left: 20,
              child: TagContainer(
                tag: widget.metaScore!.toString(),
                color: AppColors.greenTag,
              ),
            ),
        ],
      ),
    );
  }
}
