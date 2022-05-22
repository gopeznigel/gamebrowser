import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/constants/strings.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:game_browser_using_bloc/ui/home/widgets/frosted_container.dart';
import 'package:game_browser_using_bloc/ui/home/widgets/tag_container.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class NewReleaseTile extends StatefulWidget {
  const NewReleaseTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.releasedDate,
    required this.onTap,
    this.metascore,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final int? metascore;
  final String releasedDate;
  final void Function()? onTap;

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

    final _formattedDate = DateFormat('MMM dd, yyyy')
        .format(DateFormat('yyyy-MM-dd').parse(widget.releasedDate));

    final _info = Column(
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
          '$releasedText $_formattedDate',
          textAlign: TextAlign.center,
          style: TextStyles.subTitle.copyWith(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
      ],
    );

    return GestureDetector(
      onTap: widget.onTap,
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.8,
              width: MediaQuery.of(context).size.width * 0.6,
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
                    ? Hero(
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
                      )
                    : Container(
                        color: Colors.grey,
                      ),
              ),
            ),
            if (widget.metascore != null)
              Positioned(
                top: -6.5,
                left: 20,
                child: TagContainer(
                  tag: widget.metascore!.toString(),
                ),
              ),
            Positioned(
              bottom: -20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FrostedContainer(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: _info,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
