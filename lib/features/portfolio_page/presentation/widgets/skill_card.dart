import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/section_constants.dart';
import 'package:portfolio_page/features/portfolio_page/data/models/skill_model.dart';

class SkillCard extends StatelessWidget {
  final SkillModel skillCategory;

  const SkillCard({
    super.key,
    required this.skillCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: 280,
        padding: const EdgeInsets.all(20),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              skillCategory.title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: SectionConstants.primaryColor,
              ),
            ),
            const Divider(color: Color(0xFF94A3B8), thickness: 1, height: 20),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: skillCategory.skills.map((skill) {
                return Chip(
                  label: SelectableText(
                    skill,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: SectionConstants.primaryColor,
                    ),
                  ),
                  backgroundColor: SectionConstants.primaryColor.withValues(alpha: 0.2),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}