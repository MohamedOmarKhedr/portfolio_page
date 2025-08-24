import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/about_me_constants.dart';
import 'package:portfolio_page/core/extensions/reponsive_extensions.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/section_header.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = context.deviceType==DeviceType.mobile;
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SectionHeader(title: AboutMeConstants.title, isMobile: isMobile),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 10 : 40,
              ),
              child: SelectableText(
                AboutMeConstants.description1,
                textAlign: TextAlign.center,
                style: isMobile
                    ? Theme.of(context).textTheme.bodyMedium
                    : Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 10 : 40,
              ),
              child: SelectableText(
                AboutMeConstants.description2,
                textAlign: TextAlign.center,
                style: isMobile
                    ? Theme.of(context).textTheme.bodyMedium
                    : Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        );
      
  }
}