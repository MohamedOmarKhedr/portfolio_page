import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/skill_constants.dart';
import 'package:portfolio_page/core/extensions/reponsive_extensions.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/section_header.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/skill_card.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = context.deviceType==DeviceType.mobile;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SectionHeader(title: SkillConstants.title, isMobile: isMobile),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: SkillConstants.skillCategories.map((category) {
            return SkillCard(skillCategory: category);
          }).toList(),
        ),
      ],
    );
  }
}