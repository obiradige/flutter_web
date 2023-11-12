import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BubblesContainer extends StatelessWidget {
  const BubblesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Lottie.asset('assets/animation/bubbles.json'),
    );
  }
}