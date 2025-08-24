import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/section_constants.dart';
import 'package:portfolio_page/features/portfolio_page/data/models/education_model.dart';

class EducationCard extends StatelessWidget {
  final EducationModel educationItem;
  final bool isMobile;

  const EducationCard({
    super.key,
    required this.educationItem,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: isMobile ? double.infinity : 350,
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
              educationItem.title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: SectionConstants.primaryColor
              ),
            ),
            const Divider(color: Color(0xFF94A3B8), thickness: 1, height: 20),
            SelectableText(
              educationItem.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}