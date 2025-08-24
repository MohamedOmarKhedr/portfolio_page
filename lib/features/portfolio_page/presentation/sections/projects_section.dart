import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/project_constants.dart';
import 'package:portfolio_page/core/extensions/reponsive_extensions.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/project_card.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/section_header.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = context.deviceType==DeviceType.mobile;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SectionHeader(title: ProjectConstants.title, isMobile: isMobile),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: ProjectConstants.projects.map((project) {
            return SizedBox(
              width: isMobile ? context.width * 0.9 : 300,
              child: ProjectCard(
                project: project,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}