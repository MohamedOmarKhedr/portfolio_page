import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/hero_constants.dart';
import 'package:portfolio_page/core/constants/section_constants.dart';

class HeroContent extends StatelessWidget {
  final VoidCallback onDownloadCV;
  final VoidCallback onViewGitHub;
  final bool isMobile;

  const HeroContent({
    super.key,
    required this.onDownloadCV,
    required this.onViewGitHub,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: isMobile ? 40 : 70,
          horizontal: 25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo1.png'),
                radius: 58,
              ),
            ),
            const SizedBox(height: HeroConstants.nameSpacing),
            // Name
            SelectableText(
              HeroConstants.name,
              textAlign: TextAlign.center,
              style: isMobile
                  ? textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: SectionConstants.textColor,
                      letterSpacing: 1.5,
                    )
                  : textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: SectionConstants.textColor,
                      letterSpacing: 2,
                    ),
            ),

            const SizedBox(height: HeroConstants.nameSpacing),

            // Title
            SelectableText(
              HeroConstants.title,
              textAlign: TextAlign.center,
              style: isMobile
                  ? textTheme.titleLarge?.copyWith(
                      color: SectionConstants.accentColor,
                      fontWeight: FontWeight.w600,
                    )
                  : textTheme.headlineSmall?.copyWith(
                      color: SectionConstants.accentColor,
                      fontWeight: FontWeight.w600,
                    ),
            ),

            const SizedBox(height: HeroConstants.titleSpacing),

            // Description
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: isMobile ? 500 : 800),
              child: SelectableText(
                HeroConstants.description,
                textAlign: TextAlign.center,
                style: isMobile
                    ? textTheme.bodyLarge?.copyWith(
                        color: SectionConstants.textColor.withOpacity(0.85), 
                        height: 1.6)
                    : textTheme.titleMedium?.copyWith(
                        color: SectionConstants.textColor.withOpacity(0.9), 
                        height: 1.8),
              ),
            ),

            const SizedBox(height: HeroConstants.descriptionSpacing),

            // Buttons
            _buildActionButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Wrap(
      spacing: 20,
      runSpacing: 15,
      alignment: WrapAlignment.center,
      children: [
        _buildButton(
          'Download CV',
          HeroConstants.buttonColors['cv']!,
          onDownloadCV,
        ),
        _buildButton(
          'View GitHub',
          HeroConstants.buttonColors['github']!,
          onViewGitHub,
        ),
      ],
    );
  }

  Widget _buildButton(String text, Color color, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: color,
        shadowColor: Colors.black.withOpacity(0.4),
        elevation: 8,
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}