import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/section_constants.dart';
import 'package:portfolio_page/core/utils/url_launcher_util.dart';
import 'package:portfolio_page/features/portfolio_page/data/models/contact_info_model.dart';

class ContactCard extends StatelessWidget {
  final ContactInfoModel contactInfo;
  final bool isMobile;

  const ContactCard({
    super.key,
    required this.contactInfo,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1E293B),
              Color(0xFF334155),
            ],
          ),
        ),
        child: InkWell(
          onTap: () => UrlLauncherUtil.launchCustomUrl(contactInfo.url, context: context, isEmail: contactInfo.isEmail),
          child: Container(
            width: isMobile ? double.infinity : 280,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Icon(contactInfo.icon, size: 40, color: SectionConstants.primaryColor),
                const SizedBox(height: 10),
                Text(
                  contactInfo.text,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}