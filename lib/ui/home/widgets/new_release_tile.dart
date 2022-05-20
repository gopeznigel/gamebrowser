import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';
import 'package:intl/intl.dart';

class NewReleaseTile extends StatelessWidget {
  const NewReleaseTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.metascore,
    required this.releasedDate,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final int metascore;
  final String releasedDate;

  @override
  Widget build(BuildContext context) {
    final rawDate = DateFormat('yyyy-MM-dd').parse(releasedDate);
    final formattedDate = DateFormat('MMM dd, yyyy').format(rawDate);

    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              color: AppColors.gray,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
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
                  metascore.toString(),
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
                  color: Colors.grey.withOpacity(0.3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          name,
                          textAlign: TextAlign.center,
                          style: TextStyles.title.copyWith(
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        formattedDate,
                        textAlign: TextAlign.center,
                        style: TextStyles.subTitle.copyWith(
                          color: Colors.white.withOpacity(0.8),
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
