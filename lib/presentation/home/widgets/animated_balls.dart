import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimatedBalls extends StatelessWidget {
  const AnimatedBalls({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/balls.png',
      fit: BoxFit.fill,
      height: double.infinity,
      width: double.infinity,
    )
        .animate(
          onComplete: (controller) => controller.repeat(reverse: true),
        )
        .slideY(
            duration: const Duration(seconds: 10),
            begin: -0.5,
            end: 0,
            curve: Curves.decelerate);
  }
}
