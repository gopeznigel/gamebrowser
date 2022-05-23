import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';

class GenreContainer extends StatelessWidget {
  final String genre;

  const GenreContainer({
    Key? key,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: AppColors.greenTag,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        genre,
        style: TextStyles.subTitle.copyWith(
          color: AppColors.scaffoldBg,
        ),
      ),
    );
  }
}
