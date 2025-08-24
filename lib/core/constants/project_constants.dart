import 'package:portfolio_page/features/portfolio_page/data/models/project_model.dart';

class ProjectConstants {
  static const String title = 'Projects';
  
  static const List<ProjectModel> projects = [
    ProjectModel(
      title: 'JPBSQUE App - E-commerce',
      description: 'A comprehensive e-commerce application built with a focus on modern architecture and state management.',
      features: 'Flutter, Clean Architecture, RESTful APIs, Cubit, User Authentication, Product Browsing.',
      githubUrl: 'https://github.com/MohamedOmarKhedr/JOBSQUE_APP',
      websiteUrl: '',
      imageUrl: '',
    ),
    ProjectModel(
      title: 'My Portfolio Page',
      description: 'A Web-Site built with a focus on modern architecture.',
      features: 'Flutter, Clean Architecture, Responsive & Adaptive Design (mobile, tablet, desktop).',
      githubUrl: 'https://github.com/MohamedOmarKhedr/portfolio_page',
      websiteUrl: '',
      imageUrl: '',
    ),
    ProjectModel(
      title: 'Notes App',
      description: 'A simple yet robust note-taking application for organizing thoughts and ideas.',
      features: 'Flutter, Hive Local Database, CRUD Operations, Search Functionality, User Interface.',
      githubUrl: 'https://github.com/MohamedOmarKhedr/notes_app_clean_arch',
      websiteUrl: '',
      imageUrl: '',
    ),
    ProjectModel(
      title: 'Movies App',
      description: 'An app to browse movies and save notes about them, integrating with public movie APIs.',
      features: 'Flutter, RESTful APIs (TMDB), Local Storage (for notes), Movie Details, Search.',
      githubUrl: 'https://github.com/MohamedOmarKhedr/movies_app',
      websiteUrl: '',
      imageUrl: '',
    ),
    ProjectModel(
      title: 'Bookly App',
      description: 'An e-reader application showcasing book listings and details, adhering to clean architecture.',
      features: 'Flutter, Clean Architecture, RESTful APIs, Cubit, Book Browsing, Search, Favorites.',
      githubUrl: 'https://github.com/MohamedOmarKhedr/bookkly_app_clean_arch',
      websiteUrl: '',
      imageUrl: '',
    ),
    ProjectModel(
      title: 'Weather Now (Responsive)',
      description: 'A multi-platform weather application designed with responsiveness, localization, and dark mode.',
      features: 'Flutter, REST APIs (OpenWeatherMap), Cubit, Responsive & Adaptive Design (mobile, tablet, desktop), Localization (Arabic & English), Dark Mode Support.',
      githubUrl: 'https://github.com/MohamedOmarKhedr/responsive_weather_now',
      websiteUrl: '',
      imageUrl: '',
    ),
    ProjectModel(
      title: 'Responsive Dash Board',
      description: 'A responsive dashboard UI demonstrating adaptive layouts for various screen sizes.',
      features: 'Flutter, Responsive UI, Dashboard Widgets, Data Visualization (Mock Data).',
      githubUrl: 'https://github.com/MohamedOmarKhedr/responsive_dash_board',
      websiteUrl: '',
      imageUrl: '',
    ),
  ];
}