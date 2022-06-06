import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/styles/app_colors.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';

typedef OnCategoryTap = void Function();

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.urlImage,
    required this.categoryName,
    required this.onTap,
  }) : super(key: key);

  final String urlImage;
  final String categoryName;
  final OnCategoryTap onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 60,
          width: 140,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                child: Container(
                  height: 60,
                  width: 60,
                  color: AppColors.gray,
                  child: Image.network(
                    urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 60,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    categoryName,
                    style: TextStyles.subTitle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
