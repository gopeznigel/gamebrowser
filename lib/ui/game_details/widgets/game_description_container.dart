import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/constants/strings.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';

class GameDescriptionContainer extends StatefulWidget {
  const GameDescriptionContainer({Key? key, required this.description})
      : super(key: key);

  final String description;

  @override
  State<GameDescriptionContainer> createState() =>
      _GameDescriptionContainerState();
}

class _GameDescriptionContainerState extends State<GameDescriptionContainer> {
  final int _minCharsCount = 400;
  bool _someTextsHidden = false;

  @override
  void initState() {
    super.initState();

    if (widget.description.length > _minCharsCount) {
      _someTextsHidden = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.description,
          textAlign: TextAlign.justify,
          maxLines: _someTextsHidden ? 4 : 100,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.title.copyWith(
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 5),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            setState(() {
              _someTextsHidden = !_someTextsHidden;
            });
          },
          child: Text(
            _someTextsHidden ? readMoreText : readLessText,
            style: TextStyles.tag.copyWith(
              color: AppColors.selected,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
