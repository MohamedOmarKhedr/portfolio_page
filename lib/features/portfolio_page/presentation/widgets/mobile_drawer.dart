import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/app_constants.dart';

class MobileDrawer extends StatelessWidget {
  final Map<String, GlobalKey> sectionKeys;

  const MobileDrawer({
    super.key,
    required this.sectionKeys,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppConstants.secondaryBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(color: AppConstants.accentColor),
            child: Text(
              'Navigation',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          _buildDrawerItem(context, 'About Me', sectionKeys['about']!),
          _buildDrawerItem(context, 'Skills', sectionKeys['skills']!),
          _buildDrawerItem(context, 'Projects', sectionKeys['projects']!),
          _buildDrawerItem(context, 'Education', sectionKeys['education']!),
          _buildDrawerItem(context, 'Contact', sectionKeys['contact']!),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, String title, GlobalKey key) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: () {
        _scrollToSection(key);
        Navigator.pop(context);
      },
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