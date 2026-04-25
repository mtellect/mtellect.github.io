import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:video_player/video_player.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 100,
        vertical: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionHeader("Professional Experience"),
          const SizedBox(height: 60),
          _experienceBlock(
            "Senior Flutter Engineer",
            "eyewa",
            "2020 — 2024 (4 Years)",
            AppStrings.eyewaExperience,
            [
              "assets/eyewa/mobile_eyewa_vto_demo.MP4",
              "assets/eyewa/mobile_eyewa_vto_demo2.MP4",
              "assets/eyewa/mobile_vto_arcore_android.mp4",
              "assets/eyewa/mobile_vto_arkit_ios.mp4",
            ],
            isMobile,
          ),
        ],
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
          width: 60,
          height: 4,
          decoration: BoxDecoration(
            gradient: AppColors.primaryGradient,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }

  Widget _experienceBlock(String role, String company, String period, String description, List<String> videos, bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "$role @ $company",
                style: TextStyle(
                  fontSize: isMobile ? 24 : 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ),
            if (!isMobile)
              Text(
                period,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
          ],
        ),
        if (isMobile) ...[
          const SizedBox(height: 5),
          Text(
            period,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
        const SizedBox(height: 30),
        Text(
          description,
          style: const TextStyle(
            fontSize: 18,
            color: AppColors.textSecondary,
            height: 1.6,
          ),
        ),
        const SizedBox(height: 50),
        Text(
          "Virtual Try-On (VTO) Showcase",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 550,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: videos.length,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemBuilder: (context, index) => _videoCard(videos[index], isMobile),
          ),
        ),
      ],
    );
  }

  Widget _videoCard(String assetPath, bool isMobile) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: VideoPlayerWidget(assetPath: assetPath),
      ),
    ).animate().fadeIn(duration: 500.ms).slideX(begin: 0.1);
  }
}

class VideoPlayerWidget extends StatefulWidget {
  final String assetPath;
  const VideoPlayerWidget({super.key, required this.assetPath});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.assetPath)
      ..initialize().then((_) {
        setState(() {
          _isInitialized = true;
          _controller.setLooping(true);
          _controller.setVolume(0);
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }
    return FittedBox(
      fit: widget.assetPath.contains("mobile_") ? BoxFit.contain : BoxFit.cover,
      child: SizedBox(
        width: _controller.value.size.width,
        height: _controller.value.size.height,
        child: VideoPlayer(_controller),
      ),
    );
  }
}
