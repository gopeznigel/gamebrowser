import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:game_browser_using_bloc/ui/home/widgets/tag_container.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class GameCollectionTile extends StatefulWidget {
  const GameCollectionTile({
    Key? key,
    required this.size,
    required this.imageUrl,
    required this.name,
    required this.reviewCount,
    this.metaScore,
    this.rating,
  }) : super(key: key);

  final double size;
  final String imageUrl;
  final int? metaScore;
  final double? rating;
  final String name;
  final int reviewCount;

  @override
  State<GameCollectionTile> createState() => _GameCollectionTileState();
}

class _GameCollectionTileState extends State<GameCollectionTile>
    with AutomaticKeepAliveClientMixin {
  ExtendedNetworkImageProvider? _provider;
  NumberFormat numberFormat = NumberFormat.compact();

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

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: widget.size,
          width: widget.size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 3,
                  offset: const Offset(1, 1)),
            ],
          ),
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
        Positioned(
          bottom: -1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
              child: Container(
                height: 60,
                width: widget.size,
                color: Colors.grey.shade200.withOpacity(0.4),
                child: Column(
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
                      '(${numberFormat.format(double.tryParse(widget.reviewCount.toString()) ?? 0)} Reviews)',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyles.subTitle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    if (widget.rating != null)
                      RatingBarIndicator(
                        rating: widget.rating!,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 10.0,
                      ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
