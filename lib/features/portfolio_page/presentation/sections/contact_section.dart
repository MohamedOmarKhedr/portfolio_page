import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/contact_constants.dart';
import 'package:portfolio_page/core/extensions/reponsive_extensions.dart'; 
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/contact_card.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/section_header.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = context.deviceType==DeviceType.mobile;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SectionHeader(title: ContactConstants.title, isMobile: isMobile),
        Wrap(
          spacing: 30,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: ContactConstants.contactMethods.map((contact) {
            return ContactCard(
              contactInfo: contact,
              isMobile: isMobile,
            );
          }).toList(),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}