import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 100,
        vertical: 100,
      ),
      child: isMobile
          ? Column(
              children: [
                _profilePhoto(),
                const SizedBox(height: 40),
                _introText(isMobile),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: _introText(isMobile)),
                const SizedBox(width: 60),
                _profilePhoto(),
              ],
            ),
    );
  }

  Widget _introText(bool isMobile) {
    return Column(
      crossAxisAlignment: isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text(
          "Hi, I'm",
          style: TextStyle(
            fontSize: 20,
            color: AppColors.primary,
            fontWeight: FontWeight.w600,
          ),
        ).animate().fadeIn(duration: 500.ms).slideX(begin: -0.2),
        const SizedBox(height: 10),
        Text(
          AppStrings.name,
          textAlign: isMobile ? TextAlign.center : TextAlign.start,
          style: TextStyle(
            fontSize: isMobile ? 48 : 72,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ).animate().fadeIn(delay: 200.ms, duration: 500.ms).slideX(begin: -0.1),
        const SizedBox(height: 10),
        Text(
          AppStrings.title,
          style: TextStyle(
            fontSize: isMobile ? 24 : 32,
            fontWeight: FontWeight.w600,
            color: AppColors.textSecondary,
          ),
        ).animate().fadeIn(delay: 400.ms, duration: 500.ms).slideX(begin: -0.1),
        const SizedBox(height: 30),
        SizedBox(
          width: 600,
          child: Text(
            AppStrings.introduction,
            textAlign: isMobile ? TextAlign.center : TextAlign.start,
            style: TextStyle(
              fontSize: 18,
              color: AppColors.textSecondary,
              height: 1.6,
            ),
          ),
        ).animate().fadeIn(delay: 600.ms, duration: 500.ms),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: isMobile ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            _socialIcon(FontAwesomeIcons.github, AppStrings.githubUrl),
            _socialIcon(FontAwesomeIcons.whatsapp, "https://wa.me/2348143733836"),
            _socialIcon(FontAwesomeIcons.envelope, "mailto:${AppStrings.email}"),
          ],
        ).animate().fadeIn(delay: 800.ms, duration: 500.ms),
      ],
    );
  }

  Widget _profilePhoto() {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primary, width: 4),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
        image: const DecorationImage(
          image: AssetImage("assets/passport_photo.png"),
          fit: BoxFit.cover,
        ),
      ),
    ).animate().fadeIn(duration: 800.ms).scale();
  }

  Widget _socialIcon(IconData icon, String url) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: IconButton(
        icon: FaIcon(icon, color: AppColors.textPrimary, size: 28),
        onPressed: () async {
          final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        },
      ),
    );
  }
}
