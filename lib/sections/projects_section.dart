import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Container(
      width: double.infinity,
      color: AppColors.surface.withOpacity(0.3),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 100,
        vertical: 100,
      ),
      child: Column(
        children: [
          _sectionHeader("Featured Projects"),
          const SizedBox(height: 60),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: [
              _projectCard(
                "styledbyesther_core_platform",
                "A core platform for stylized fashion commerce. Built with Flutter and a modular architecture.",
                "https://github.com/mtellect/styledbyesther_core_platform",
                FontAwesomeIcons.bagShopping,
              ),
              _projectCard(
                "vto_face_metrics",
                "Advanced 3D face metrics and landmarks detection for Virtual Try-On experiences.",
                "https://github.com/mtellect/vto_face_metrics",
                FontAwesomeIcons.faceSmile,
              ),
              _projectCard(
                "serverpod_api_docs",
                "Documentation and API reference for Serverpod-based backend implementations.",
                "https://github.com/mtellect/serverpod_api_docs",
                FontAwesomeIcons.book,
              ),
            ],
          ),
          const SizedBox(height: 80),
          _githubCallToAction(),
        ],
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 80,
          height: 4,
          decoration: BoxDecoration(
            gradient: AppColors.primaryGradient,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }

  Widget _projectCard(String title, String description, String url, IconData icon) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primary.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: AppColors.primary, size: 24),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 30),
          TextButton.icon(
            onPressed: () async {
              final uri = Uri.parse(url);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            icon: const FaIcon(FontAwesomeIcons.github, size: 18),
            label: const Text("View Source"),
            style: TextButton.styleFrom(foregroundColor: AppColors.primary),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 500.ms).scale(begin: const Offset(0.95, 0.95));
  }

  Widget _githubCallToAction() {
    return Column(
      children: [
        const Text(
          "Want to see more?",
          style: TextStyle(fontSize: 20, color: AppColors.textPrimary),
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: () async {
            final uri = Uri.parse("${AppStrings.githubUrl}?tab=repositories");
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            }
          },
          icon: const FaIcon(FontAwesomeIcons.github),
          label: const Text("Explore All Repositories"),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    ).animate().fadeIn(delay: 500.ms);
  }
}
