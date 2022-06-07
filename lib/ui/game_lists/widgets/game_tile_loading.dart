import 'package:flutter/material.dart';
import 'package:game_browser_using_bloc/ui/widgets/shimmer_container.dart';
import 'package:shimmer/shimmer.dart';

class GameTileLoading extends StatelessWidget {
  const GameTileLoading({Key? key}) : super(key: key);

  final double _height = 65.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      margin: EdgeInsets.all(_height * 0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Game Image
          SizedBox(
            width: _height,
            height: _height,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Details Preview
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ShimmerContainer(width: 150, height: 10),
                  Spacer(),
                  ShimmerContainer(width: 100, height: 10),
                  Spacer(flex: 3),
                  ShimmerContainer(width: 120, height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
