import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/sections/hero_section.dart';
import 'package:my_portfolio/sections/skills_section.dart';
import 'package:my_portfolio/sections/experience_section.dart';
import 'package:my_portfolio/sections/projects_section.dart';
import 'package:my_portfolio/sections/contact_section.dart';
import 'package:my_portfolio/widgets/navbar.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maugost Okore | Senior Flutter Engineer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.outfitTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: AppColors.textPrimary,
          displayColor: AppColors.textPrimary,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          brightness: Brightness.dark,
          surface: AppColors.surface,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _heroKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOutQuart,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                HeroSection(key: _heroKey),
                SkillsSection(key: _skillsKey),
                ExperienceSection(key: _experienceKey),
                ProjectsSection(key: _projectsKey),
                ContactSection(key: _contactKey),
                const Footer(),
              ],
            ),
          ),
          Navbar(
            onNavTap: (index) {
              switch (index) {
                case 0: _scrollToSection(_heroKey); break;
                case 1: _scrollToSection(_skillsKey); break;
                case 2: _scrollToSection(_experienceKey); break;
                case 3: _scrollToSection(_projectsKey); break;
                case 4: _scrollToSection(_contactKey); break;
              }
            },
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          const Divider(color: AppColors.surface, height: 1),
          const SizedBox(height: 40),
          Text(
            "© ${DateTime.now().year} Maugost Okore. Built with Flutter Web.",
            style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
