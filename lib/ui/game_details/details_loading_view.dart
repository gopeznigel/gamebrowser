import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/ui/widgets/shimmer_container.dart';

class DetailsLoadingView extends StatelessWidget {
  const DetailsLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ShimmerContainer(width: 250, height: 15),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: ShimmerContainer(width: double.infinity, height: 15),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: ShimmerContainer(width: 300, height: 15),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: ShimmerContainer(width: double.infinity, height: 15),
            ),
          ],
        ),
      ],
    );
  }
}
