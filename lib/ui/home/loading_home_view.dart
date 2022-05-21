import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/ui/widgets/shimmer_container.dart';

class LoadingHomeView extends StatelessWidget {
  const LoadingHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: ShimmerContainer(width: 200, height: 40),
        ),
        const SizedBox(height: 50),
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.3,
            viewportFraction: 0.55,
            initialPage: 1,
            scrollPhysics: const NeverScrollableScrollPhysics(),
          ),
          items: List.generate(
            3,
            (int i) => ShimmerContainer(
              height: 300,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
        ),
      ],
    );
  }
}
