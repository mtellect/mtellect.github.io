import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

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
          _sectionHeader("Selected Works"),
          const SizedBox(height: 60),
          GridView.count(
            crossAxisCount: isMobile ? 1 : 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 40,
            crossAxisSpacing: 40,
            childAspectRatio: isMobile ? 0.8 : 1.2,
            children: [
              _projectCard(
                "DeyChop",
                AppStrings.deychopDesc,
                "assets/deychop/customer_app.mov",
                FontAwesomeIcons.utensils,
                isMobile,
              ),
              _projectCard(
                "Along",
                AppStrings.alongDesc,
                "assets/along/driver_enroute_flow.mov",
                FontAwesomeIcons.truckFast,
                isMobile,
              ),
              _projectCard(
                "Faadaakaa",
                AppStrings.faadaakaaDesc,
                "assets/faadaakaa/homepage_flow.mp4",
                FontAwesomeIcons.creditCard,
                isMobile,
              ),
              _projectCard(
                "StyledByEsther",
                AppStrings.styledByEstherDesc,
                "assets/styledbyesther/app_flow_demo.mp4",
                FontAwesomeIcons.shirt,
                isMobile,
              ),
              _projectCard(
                "Gaamozi",
                AppStrings.gaamoziDesc,
                "assets/gaamozi/landing_page_web.png",
                FontAwesomeIcons.box,
                isMobile,
                isImage: true,
              ),
              _projectCard(
                "Eyewa",
                AppStrings.eyewaDesc,
                "assets/eyewa/eyewa_vto_demo.MP4",
                FontAwesomeIcons.glasses,
                isMobile,
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

  Widget _projectCard(String title, String description, String assetPath, IconData icon, bool isMobile, {bool isImage = false}) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primary.withOpacity(0.1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              child: SizedBox(
                width: double.infinity,
                child: isImage
                    ? Image.asset(assetPath, fit: BoxFit.cover)
                    : ProjectVideoPlayer(assetPath: assetPath),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(icon, color: AppColors.primary, size: 20),
                      const SizedBox(width: 10),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Expanded(
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: isMobile ? 14 : 16,
                        color: AppColors.textSecondary,
                        height: 1.5,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 500.ms).scale(begin: const Offset(0.95, 0.95));
  }

  Widget _githubCallToAction() {
    return Column(
      children: [
        const Text(
          "Want to see more technical details?",
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
          label: const Text("Explore More on GitHub"),
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

class ProjectVideoPlayer extends StatefulWidget {
  final String assetPath;
  const ProjectVideoPlayer({super.key, required this.assetPath});

  @override
  State<ProjectVideoPlayer> createState() => _ProjectVideoPlayerState();
}

class _ProjectVideoPlayerState extends State<ProjectVideoPlayer> {
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
      fit: BoxFit.cover,
      child: SizedBox(
        width: _controller.value.size.width,
        height: _controller.value.size.height,
        child: VideoPlayer(_controller),
      ),
    );
  }
}
