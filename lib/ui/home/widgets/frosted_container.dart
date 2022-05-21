import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedContainer extends StatelessWidget {
  const FrostedContainer({
    Key? key,
    this.child,
    this.width,
    this.height,
  }) : super(key: key);

  final Widget? child;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 15.0,
          sigmaY: 15.0,
        ),
        child: Container(
          height: height,
          width: width,
          color: Colors.grey.shade200.withOpacity(0.4),
          child: child ?? const SizedBox(),
        ),
      ),
    );
  }
}
