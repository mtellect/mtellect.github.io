import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFF0F172A);
  static const Color surface = Color(0xFF1E293B);
  static const Color primary = Color(0xFF38BDF8);
  static const Color secondary = Color(0xFF818CF8);
  static const Color accent = Color(0xFFF472B6);
  static const Color textPrimary = Color(0xFFF8FAFC);
  static const Color textSecondary = Color(0xFF94A3B8);
  
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

class AppStrings {
  static const String name = "Maugost Okore";
  static const String title = "Senior Flutter Engineer";
  static const String introduction = 
      "I am a Senior Flutter Engineer with over 4 years of experience building high-performance, "
      "visually stunning mobile and web applications. Specialized in complex UI/UX, Virtual Try-On (VTO) "
      "technologies, and full-stack development with Serverpod.";
      
  static const String eyewaExperience = 
      "At eyewa, I led the development of Virtual Try-On (VTO) experiences using ARCore and ARKit, "
      "enabling customers to try on eyewear digitally with high precision. I focused on performance optimization, "
      "custom rendering, and seamless cross-platform integration.";

  static const String githubUrl = "https://github.com/mtellect";
  static const String whatsappNumber = "+2348143733836";
  static const String email = "ammaugost@gmail.com";
  
  static const String resumePath = "assets/Resume_Maugost_Okore_Senior_Flutter_Engineer.pdf";
}
