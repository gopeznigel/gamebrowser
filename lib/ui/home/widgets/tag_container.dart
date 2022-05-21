import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';

class TagContainer extends StatelessWidget {
  final String tag;
  final Color color;

  const TagContainer({
    Key? key,
    required this.tag,
    this.color = AppColors.ratings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          tag,
          textAlign: TextAlign.center,
          style: TextStyles.tag,
        ),
      ),
    );
  }
}
