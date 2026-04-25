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
  static const String title = "Senior Mobile Architect";
  static const String introduction = 
      "I am a Senior Mobile Architect with 12 years of experience specializing in high-scale ecosystems. "
      "I lead the development of performant, visually stunning applications, with deep expertise in Flutter, "
      "Native bridging (Swift/Java), and Virtual Try-On (VTO) technologies. From architecting eyewa’s V1/V2 platforms "
      "to building full-stack Dart solutions with Serverpod, I focus on 'jank-free' performance and 99.9% crash-free reliability.";
      
  static const String eyewaExperience = 
      "At eyewa, I led the development of Virtual Try-On (VTO) experiences using ARCore and ARKit, "
      "enabling customers to try on eyewear digitally with high precision. I focused on performance optimization, "
      "custom rendering, and seamless cross-platform integration.";

  static const String githubUrl = "https://github.com/mtellect";
  static const String whatsappNumber = "+2348143733836";
  static const String email = "ammaugost@gmail.com";
  
  static const String resumePath = "assets/Resume_Maugost_Okore_Senior_Flutter_Engineer.pdf";

  // New Project Descriptions
  static const String faadaakaaDesc = "A sophisticated fintech e-commerce solution enabling 'Buy Now, Pay Later' (BNPL) capabilities, integrated with robust risk assessment and seamless payment gateways.";
  static const String alongDesc = "A disruptive Peer-to-Peer (P2P) logistics ecosystem optimizing last-mile delivery through real-time tracking, intelligent routing, and collaborative courier networks.";
  static const String eyewaDesc = "A market-leading eyewear retail platform featuring cutting-edge Virtual Try-On (VTO) technology, delivering a personalized and immersive shopping experience for luxury eyewear.";
  static const String deychopDesc = "A comprehensive hyper-local food delivery marketplace connecting vendors, riders, and customers with a multi-app ecosystem optimized for speed and reliability.";
  static const String gaamoziDesc = "A versatile logistics and on-demand delivery platform bridging the gap between consumers and essential services, from medical supplies and groceries to household energy.";
  static const String styledByEstherDesc = "A high-end fashion e-commerce experience blending luxury aesthetics with intuitive commerce workflows, built for the modern fashion-conscious consumer.";
}
