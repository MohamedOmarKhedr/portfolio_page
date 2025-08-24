import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/app_constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web/web.dart' as web;

class UrlLauncherUtil {
  static Future<void> launchCustomUrl(
    String url, {
    BuildContext? context,
    required bool isEmail,
  }) async {
    try {
      final Uri uri;
      if (!isEmail) {
        uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri);
        } else if (context != null) {
          _showErrorSnackbar(context, 'Could not launch the URL.');
        }
      } else {
        final gmailUrl =
          "https://mail.google.com/mail/?view=cm&fs=1&to=$url";
        web.window.open(gmailUrl, '_blank');
      }
    } catch (e) {
      if (context != null) {
        _showErrorSnackbar(context, 'An error occurred: $e');
      }
    }
  }

  static void _showErrorSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.all(20),
        backgroundColor: AppConstants.accentColor,
      ),
    );
  }
}
