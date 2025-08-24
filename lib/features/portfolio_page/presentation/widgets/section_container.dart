import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final GlobalKey sectionKey;
  final Widget child;

  const SectionContainer({
    required this.sectionKey,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: sectionKey,
      padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),
      width: double.infinity,
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}