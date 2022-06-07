import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:shimmer/shimmer.dart';

typedef ScreenshotImageTap = void Function();

class ScreenshotImage extends StatefulWidget {
  final String imageUrl;
  final double width;
  final double height;
  final ScreenshotImageTap onTap;

  const ScreenshotImage({
    Key? key,
    required this.imageUrl,
    required this.width,
    required this.height,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ScreenshotImage> createState() => _ScreenshotImageState();
}

class _ScreenshotImageState extends State<ScreenshotImage>
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

    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: _provider == null
              ? Container(
                  color: AppColors.gray,
                )
              : ExtendedImage(
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
        ),
      ),
    );
  }
}
