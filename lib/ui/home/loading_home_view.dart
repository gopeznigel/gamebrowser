import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/ui/widgets/shimmer_container.dart';

class LoadingHomeView extends StatelessWidget {
  const LoadingHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final leftPadding = MediaQuery.of(context).size.width * 0.1;
    final _carouselHeight = MediaQuery.of(context).size.width * 0.8;

    final _carousel = CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.7,
        height: MediaQuery.of(context).size.width * 0.8,
        enableInfiniteScroll: false,
        scrollPhysics: const NeverScrollableScrollPhysics(),
        clipBehavior: Clip.none,
      ),
      items: List.generate(
        3,
        (int i) => ShimmerContainer(
          height: MediaQuery.of(context).size.width * 0.8,
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ),
    );

    final _carouselView = Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: _carouselHeight,
        ),
        Positioned(
          left: leftPadding * -1,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: _carousel,
          ),
        ),
      ],
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: leftPadding),
          child: const ShimmerContainer(width: 200, height: 40),
        ),
        const SizedBox(height: 30),
        _carouselView,
      ],
    );
  }
}
