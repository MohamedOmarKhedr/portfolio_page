import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/hero_constants.dart';

class HeroBackground extends StatelessWidget {
  const HeroBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -HeroConstants.circleOffset,
          left: -80,
          child: CircleAvatar(
            radius: HeroConstants.circleRadius,
            backgroundColor: HeroConstants.buttonColors['cv']!.withValues(alpha:0.2),
          ),
        ),
        Positioned(
          bottom: -HeroConstants.circleOffset,
          right: -80,
          child: CircleAvatar(
            radius: HeroConstants.circleRadius,
            backgroundColor: HeroConstants.buttonColors['github']!.withValues(alpha:0.2),
          ),
        ),
      ],
    );
  }
}