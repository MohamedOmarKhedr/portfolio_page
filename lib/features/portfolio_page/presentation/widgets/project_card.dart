import 'package:flutter/material.dart';
import 'package:portfolio_page/features/portfolio_page/data/models/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;

  const ProjectCard({
    super.key, required this.project,
    
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Card(
        elevation: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.antiAlias,
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF1E293B),
                Color(0xFF334155),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: project.websiteUrl.isNotEmpty
                ? () async {
                    if (await canLaunchUrl(Uri.parse(project.websiteUrl))) {
                      await launchUrl(Uri.parse(project.websiteUrl));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Could not launch project website: ${project.websiteUrl}')),
                      );
                    }
                  }
                : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SelectableText(
                        project.title,
                        style: textTheme.titleLarge?.copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      SelectableText(
                        project.description,
                        style: textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 8),
                      SelectableText(
                        'Features:',
                        style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      SelectableText(
                        project.features,
                        style: textTheme.bodySmall?.copyWith(color: const Color(0xFF94A3B8)),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (project.websiteUrl.isNotEmpty)
                            Expanded(
                              
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton.icon(
                                  onPressed: () async {
                                    if (await canLaunchUrl(Uri.parse(project.websiteUrl))) {
                                      await launchUrl(Uri.parse(project.websiteUrl));
                                    } else {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text('Could not launch project website: ${project.websiteUrl}')),
                                      );
                                    }
                                  },
                                  icon: const Icon(Icons.launch, size: 16),
                                  label: const Text('Live Demo'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF10B981),
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                  ),
                                ),
                              ),
                            ),
                          Expanded(
                            
                            child: Padding(
                              padding: const EdgeInsets.all( 8),
                              child: ElevatedButton.icon(
                                onPressed: () async {
                                  if (await canLaunchUrl(Uri.parse(project.githubUrl))) {
                                    await launchUrl(Uri.parse(project.githubUrl));
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('Could not launch GitHub link: ${project.githubUrl}')),
                                    );
                                  }
                                },
                                icon: const Icon(Icons.code, size: 16),
                                label: const Text('View Code'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF6366F1),
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}