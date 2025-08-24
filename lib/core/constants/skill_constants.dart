import 'package:portfolio_page/features/portfolio_page/data/models/skill_model.dart';

class SkillConstants {
  static const String title = 'Skills';
  
  static const List<SkillModel> skillCategories = [
    SkillModel(
      title: 'Programming & Concepts',
      skills: [
        'OOP', 'Data Structures', 'Algorithms', 'Problem Solving',
        'Design Patterns', 'SOLID Principles', 'Clean Code', 'Clean Architecture'
      ],
    ),
    SkillModel(
      title: 'Mobile Development',
      skills: [
        'Flutter', 'Dart', 'Bloc & Cubit State Management', 'Firebase',
        'RESTful APIs', 'SQLite', 'Dio', 'Responsive & Adaptive UI', 'Deployment'
      ],
    ),
    SkillModel(
      title: 'Software Engineering',
      skills: [
        'Agile Methodologies', 'Unit Testing', 'Debugging', 'MVVM', 'GitHub'
      ],
    ),
    SkillModel(
      title: 'Soft Skills',
      skills: [
        'Communication', 'Teamwork', 'Analytical Thinking'
      ],
    ),
  ];
}