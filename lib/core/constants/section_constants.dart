import 'package:flutter/material.dart';


class SectionConstants {
  static const double sectionPadding = 60.0;
  static const double horizontalPadding = 20.0;
  static const double maxContentWidth = 1200.0;
  static const double mobileBreakpoint = 600.0;
  static const double tabletBreakpoint = 700.0;
  
  static const Color primaryColor = Color(0xFF6366F1);
  static const Color secondaryColor = Color(0xFF10B981);
  static const Color accentColor = Color(0xFF38BDF8);
  static const Color textColor = Colors.white;
  static const Color dividerColor = Color(0xFF6366F1);
  static const Color cardBackgroundColor1 = Color(0xFF1E293B);
  static const Color cardBackgroundColor2 = Color(0xFF334155);
  static const Color chipBackgroundColor = Color(0xFF94A3B8);
  
  static const Duration scrollDuration = Duration(milliseconds: 700);
  static const Curve scrollCurve = Curves.easeInOut;
  
  // Common padding values
  static const EdgeInsets defaultPadding = EdgeInsets.all(20);
  static const EdgeInsets buttonPadding = EdgeInsets.symmetric(
    horizontal: 28,
    vertical: 16,
  );
  static const EdgeInsets sectionContentPadding = EdgeInsets.symmetric(
    horizontal: 40,
  );
  static const EdgeInsets mobileContentPadding = EdgeInsets.symmetric(
    horizontal: 10,
  );
  
  // Common border values
  static const double defaultBorderRadius = 20.0;
  static const double buttonBorderRadius = 30.0;
  static const double defaultElevation = 15.0;
  static const double buttonElevation = 8.0;
  
  // Divider properties
  static const double dividerThickness = 3.0;
  static const double dividerIndent = 100.0;
  static const double dividerEndIndent = 100.0;
  static const double dividerHeight = 40.0;
  
  // Common spacing values
  static const double smallSpacing = 10.0;
  static const double mediumSpacing = 20.0;
  static const double largeSpacing = 35.0;
  static const double xlSpacing = 50.0;
}