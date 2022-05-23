import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class GameRating extends StatelessWidget {
  const GameRating({
    Key? key,
    required this.rating,
    this.size = 10.0,
  }) : super(key: key);

  final double rating;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemBuilder: (context, index) => const Icon(
        Icons.star_rounded,
        color: Colors.amber,
      ),
      itemCount: 5,
      itemSize: size,
    );
  }
}
