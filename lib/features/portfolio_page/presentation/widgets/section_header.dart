import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/section_constants.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final bool isMobile;

  const SectionHeader({
    super.key,
    required this.title,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          title,
          style: isMobile
              ? Theme.of(context).textTheme.headlineSmall
              : Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        const Divider(
          color: SectionConstants.dividerColor,
          thickness: 3,
          indent: 100,
          endIndent: 100,
          height: 40,
        ),
      ],
    );
  }
}