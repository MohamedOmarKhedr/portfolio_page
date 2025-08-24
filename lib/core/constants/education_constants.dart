import 'package:portfolio_page/features/portfolio_page/data/models/education_model.dart';

class EducationConstants {
  static const String title = 'Education';
  
  static const List<EducationModel> educationItems = [
    EducationModel(
      title: 'Faculty of Computing and Information, Tanta University',
      description: 'Department of Computer Science – GPA: 3.76 / 4.0',
    ),
    EducationModel(
      title: 'Flutter Diploma – AMIT',
      description: 'Grade: 95%\nCovered: Widgets, Notifications, Layout Widgets, Custom Widgets, Animations, Navigation, State Management, RESTful APIs, SQL Database.',
    ),
    EducationModel(
      title: 'Udemy Courses (Instructor: Tharwat Samy)',
      description: '• Mastering Flutter: Responsive & Adaptive UI Design.\n• Flutter Advanced Course: Bloc and MVVM Pattern [Taught in Arabic].\n• Deep Dive into Clean Architecture in Flutter [Taught in Arabic].',
    ),
  ];
}