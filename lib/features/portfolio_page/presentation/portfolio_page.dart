import 'package:flutter/material.dart';
import 'package:portfolio_page/core/constants/app_constants.dart';
import 'package:portfolio_page/core/extensions/scroll_configuration_extension.dart';
import 'package:portfolio_page/core/utils/url_launcher_util.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/sections/about_me_section.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/sections/contact_section.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/sections/education_section.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/sections/hero_section.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/sections/projects_section.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/sections/skills_section.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/custom_navigation_bar.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/footer.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/mobile_drawer.dart';
import 'package:portfolio_page/features/portfolio_page/presentation/widgets/section_container.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  final Map<String, GlobalKey> sectionKeys = {
    'hero': GlobalKey(),
    'about': GlobalKey(),
    'skills': GlobalKey(),
    'projects': GlobalKey(),
    'education': GlobalKey(),
    'contact': GlobalKey(),
  };

  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.primaryBackgroundColor,
        actions: [
          CustomNavigationBar(
            sectionKeys: sectionKeys,
            isMobile: isMobile,
          ),
        ],
      ),
      endDrawer: isMobile 
          ? MobileDrawer(sectionKeys: sectionKeys) 
          : null,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppConstants.primaryBackgroundColor,
              AppConstants.secondaryBackgroundColor,
            ],
          ),
        ),
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              SectionContainer(
                sectionKey: sectionKeys['hero']!,
                child: HeroSection(
                  onDownloadCV: () => UrlLauncherUtil.launchCustomUrl(
                    AppConstants.cvUrl,
                    context: context,
                    isEmail: false
                  ),
                  onViewGitHub: () => UrlLauncherUtil.launchCustomUrl(
                    AppConstants.githubUrl,
                    context: context,
                    isEmail: false
                  ),
                ),
              ),
              SectionContainer(
                sectionKey: sectionKeys['about']!,
                child: const AboutMeSection(),
              ),
              SectionContainer(
                sectionKey: sectionKeys['skills']!,
                child: const SkillsSection(),
              ),
              SectionContainer(
                sectionKey: sectionKeys['projects']!,
                child: const ProjectsSection(),
              ),
              SectionContainer(
                sectionKey: sectionKeys['education']!,
                child: const EducationSection(),
              ),
              SectionContainer(
                sectionKey: sectionKeys['contact']!,
                child: const ContactSection(),
              ),
              const Footer(),
            ],
          ),
        ).withScrollConfiguration(),
      ),
    );
  }
}