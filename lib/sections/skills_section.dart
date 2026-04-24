import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/utils/constants.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Container(
      width: double.infinity,
      color: AppColors.surface.withOpacity(0.5),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 100,
        vertical: 80,
      ),
      child: Column(
        children: [
          Text(
            "What I Do",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ).animate().fadeIn(),
          const SizedBox(height: 20),
          Container(
            width: 80,
            height: 4,
            decoration: BoxDecoration(
              gradient: AppColors.primaryGradient,
              borderRadius: BorderRadius.circular(2),
            ),
          ).animate().fadeIn(delay: 200.ms).scaleX(),
          const SizedBox(height: 60),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: [
              _skillCard(
                "Fullstack Development",
                "I build complete applications from frontend to backend. Expert in Flutter for multi-platform apps and Serverpod for robust, type-safe backends.",
                Icons.layers,
              ),
              _skillCard(
                "Mobile Engineering",
                "Specialized in high-performance Flutter applications with complex animations, custom rendering, and deep native integrations.",
                Icons.phone_android,
              ),
              _skillCard(
                "AR & VTO Tech",
                "Deep experience with Virtual Try-On (VTO) using ARCore and ARKit. Expertise in 3D face metrics and real-time mesh rendering.",
                Icons.view_in_ar,
              ),
              _skillCard(
                "Backend & APIs",
                "Designing scalable APIs and database architectures. Experienced with PostgreSQL, Docker, and cloud deployments.",
                Icons.api,
              ),
            ],
          ),
          const SizedBox(height: 60),
          _techStackGrid(),
        ],
      ),
    );
  }

  Widget _skillCard(String title, String description, IconData icon) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.primary, size: 40),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.1);
  }

  Widget _techStackGrid() {
    final techs = [
      "Flutter", "Dart", "Serverpod", "Firebase", "PostgreSQL", 
      "ARCore", "ARKit", "Docker", "Git", "Java", "Kotlin", "Swift"
    ];

    return Wrap(
      spacing: 15,
      runSpacing: 15,
      alignment: WrapAlignment.center,
      children: techs.map((tech) => _techBadge(tech)).toList(),
    );
  }

  Widget _techBadge(String name) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.primary.withOpacity(0.3)),
      ),
      child: Text(
        name,
        style: const TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
    );
  }
}
