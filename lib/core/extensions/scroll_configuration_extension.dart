import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

extension ScrollConfigurationExtension on Widget {
  Widget withScrollConfiguration() {
    return ScrollConfiguration(
      behavior: const _CustomScrollBehavior(),
      child: this,
    );
  }
}

class _CustomScrollBehavior extends MaterialScrollBehavior {
  const _CustomScrollBehavior();

  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}
