import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/models/game_dto.dart';
import 'package:game_browser_using_bloc/styles/text_styles.dart';

class CommonDetailsContainer extends StatelessWidget {
  final String title;
  final List<CommonDetailsDto> details;

  const CommonDetailsContainer({
    Key? key,
    required this.title,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.subTitle.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 6),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Wrap(
            children: details.map((d) {
              final _last = (d == details.last);

              return Text(
                '${d.name!}${_last ? '' : ', '}',
                style: TextStyles.title.copyWith(
                  fontWeight: FontWeight.w300,
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
