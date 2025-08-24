import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/app_constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: AppConstants.secondaryBackgroundColor,
      width: double.infinity,
      child: Text(
        '© ${DateTime.now().year} Mohamed Omar Khedr. All rights reserved.',
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppConstants.textColor, 
          fontSize: 12
        ),
      ),
    );
  }
}