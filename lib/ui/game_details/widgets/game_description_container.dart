import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:game_browser_using_bloc/utils/game_description_formatter.dart';

class GameDescriptionContainer extends StatefulWidget {
  const GameDescriptionContainer({Key? key, required this.description})
      : super(key: key);

  final String description;

  @override
  State<GameDescriptionContainer> createState() =>
      _GameDescriptionContainerState();
}

class _GameDescriptionContainerState extends State<GameDescriptionContainer> {
  String _desc = '';
  int minCharsCount = 400;
  int charsCount = 0;
  bool someTextsHidden = false;

  @override
  void initState() {
    super.initState();

    _desc = GameDescriptionFormatter.htmlToText(widget.description);
    charsCount = _desc.length;

    if (charsCount > minCharsCount) {
      someTextsHidden = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _desc,
          maxLines: someTextsHidden ? 4 : 100,
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
              someTextsHidden = !someTextsHidden;
            });
          },
          child: Text(
            someTextsHidden ? 'Read more' : 'Read less',
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
