import 'package:flutter/material.dart';
import 'package:portfolio_page/core/extensions/reponsive_extensions.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/hero_background.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/hero_content.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onDownloadCV;
  final VoidCallback onViewGitHub;

  const HeroSection({
    super.key,
    required this.onDownloadCV,
    required this.onViewGitHub,
  });

  @override
  Widget build(BuildContext context) {
    bool isMobile = context.deviceType == DeviceType.mobile;

    return IntrinsicHeight(
      child: Stack(
        children: [
          const HeroBackground(),
          HeroContent(
            onDownloadCV: onDownloadCV,
            onViewGitHub: onViewGitHub,
            isMobile: isMobile,
          ),
        ],
      ),
    );
  }
}
