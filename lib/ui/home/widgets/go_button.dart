import 'package:flutter/material.dart';

class GoButton extends StatelessWidget {
  const GoButton({Key? key, this.onTap}) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300, spreadRadius: 5, blurRadius: 30)
        ],
      ),
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: const Center(
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
              size: 15,
            ),
          ),
        ),
      ),
    );
  }
}
