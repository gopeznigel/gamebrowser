import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class NewReleaseTile extends StatefulWidget {
  const NewReleaseTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.releasedDate,
    this.metascore,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final int? metascore;
  final String releasedDate;

  @override
  State<NewReleaseTile> createState() => _NewReleaseTileState();
}

class _NewReleaseTileState extends State<NewReleaseTile>
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

    final rawDate = DateFormat('yyyy-MM-dd').parse(widget.releasedDate);
    final formattedDate = DateFormat('MMM dd, yyyy').format(rawDate);

    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width * 0.5,
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
          Positioned(
            top: -6.5,
            left: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: AppColors.ratings,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  widget.metascore?.toString() ?? 'No score yet',
                  textAlign: TextAlign.center,
                  style: TextStyles.tag,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Colors.grey.shade200.withOpacity(0.4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          widget.name,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.title.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        formattedDate,
                        textAlign: TextAlign.center,
                        style: TextStyles.subTitle.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
