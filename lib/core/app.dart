import 'package:flutter/material.dart';
import 'package:portfolio_page/core/utils/app_theme.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/portfolio_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Protfolio Page',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const PortfolioPage(),
    );
  }
}