import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/education_constants.dart';
import 'package:portfolio_page/core/constants/section_constants.dart';
import 'package:portfolio_page/core/extensions/reponsive_extensions.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/education_card.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/section_header.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = context.deviceType==DeviceType.mobile;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SectionHeader(title: EducationConstants.title, isMobile: isMobile),
        Wrap(
          spacing: SectionConstants.mediumSpacing,
          runSpacing: SectionConstants.mediumSpacing,
          alignment: WrapAlignment.center,
          children: EducationConstants.educationItems.map((item) {
            return EducationCard(
              educationItem: item,
              isMobile: isMobile,
            );
          }).toList(),
        ),
      ],
    );
  }
}