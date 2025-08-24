import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final Map<String, GlobalKey> sectionKeys;
  final bool isMobile;

  const CustomNavigationBar({
    super.key,
    required this.sectionKeys,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return IconButton(
        icon: const Icon(Icons.menu, color: Colors.white),
        onPressed: () {
          Scaffold.of(context).openEndDrawer();
        },
      );
    }

    return Row(
      children: [
        _buildNavItem(context, 'About Me', sectionKeys['about']!),
        _buildNavItem(context, 'Skills', sectionKeys['skills']!),
        _buildNavItem(context, 'Projects', sectionKeys['projects']!),
        _buildNavItem(context, 'Education', sectionKeys['education']!),
        _buildNavItem(context, 'Contact', sectionKeys['contact']!),
      ],
    );
  }

  Widget _buildNavItem(BuildContext context, String title, GlobalKey key) {
    return TextButton(
      onPressed: () => _scrollToSection(key),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    }
  }
}