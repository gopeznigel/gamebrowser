import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/constants/strings.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:game_browser_using_bloc/ui/widgets/game_rating.dart';
import 'package:game_browser_using_bloc/utils/custom_number_formatter.dart';
import 'package:shimmer/shimmer.dart';

class GameTile extends StatefulWidget {
  const GameTile({
    Key? key,
    required this.rating,
    required this.imageUrl,
    required this.name,
    required this.reviewCount,
    this.onTap,
  }) : super(key: key);

  final double rating;
  final String imageUrl;
  final String name;
  final int reviewCount;
  final void Function()? onTap;

  @override
  State<GameTile> createState() => _GameTileState();
}

class _GameTileState extends State<GameTile>
    with AutomaticKeepAliveClientMixin {
  ExtendedNetworkImageProvider? _provider;

  final double _height = 65.0;

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
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final _compactReviewCount = CustomNumberFormatter()
        .transformToCompact(double.parse(widget.reviewCount.toString()));

    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: _height,
        margin: EdgeInsets.all(_height * 0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Game Image
            SizedBox(
              width: _height,
              height: _height,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: _provider != null
                    ? ExtendedImage(
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
                      )
                    : Container(
                        color: AppColors.gray,
                      ),
              ),
            ),
            // Details Preview
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyles.title,
                    ),
                    const Spacer(),
                    Text(
                      '$_compactReviewCount $reviewText${widget.reviewCount > 1 ? 's' : ''}',
                      style: TextStyles.subTitle,
                    ),
                    const Spacer(flex: 3),
                    GameRating(
                      rating: widget.rating,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
