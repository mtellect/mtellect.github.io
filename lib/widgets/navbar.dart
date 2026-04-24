import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Navbar extends StatelessWidget {
  final Function(int) onNavTap;

  const Navbar({super.key, required this.onNavTap});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.background.withOpacity(0.8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 100),
        child: Row(
          children: [
            Text(
              "Maugost",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                foreground: Paint()..shader = AppColors.primaryGradient.createShader(
                  const Rect.fromLTWH(0, 0, 200, 70),
                ),
              ),
            ),
            const Spacer(),
            if (!isMobile) ...[
              _navItem("Intro", 0),
              _navItem("Skills", 1),
              _navItem("Experience", 2),
              _navItem("Projects", 3),
              _navItem("Contact", 4),
              const SizedBox(width: 20),
              _resumeButton(),
            ] else 
              IconButton(
                icon: const Icon(Icons.menu, color: AppColors.textPrimary),
                onPressed: () {
                  // Mobile menu logic could go here, but for simplicity we'll just show the icons
                },
              ),
          ],
        ),
      ),
    );
  }

  Widget _navItem(String title, int index) {
    return TextButton(
      onPressed: () => onNavTap(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          title,
          style: const TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget _resumeButton() {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: () async {
          final url = Uri.parse(AppStrings.resumePath);
          // For local assets in web, we might need a different strategy, 
          // but usually they can be served.
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: const Text(
          "Resume",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
