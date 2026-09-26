import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // ==========================================
  // BRAND COLORS
  // ==========================================
  static const Color brandPrimary = Color(0xFF1E365C);
  static const Color brandSecondary = Color(0xFFC69732);
  static const Color gradientPrimary = Color(0xFFC69732);
  static Color backgroundBrandSubtle = const Color(0xFFC69736).withOpacity(0.11);

  // ==========================================
  // BACKGROUNDS
  // ==========================================
  static const Color backgroundDefault = Color(0xFFF8F9FA);
  static const Color backgroundSurface = Color(0xFFFFFFFF);

  // ==========================================
  // TEXT COLORS
  // ==========================================
  static const Color textPrimary = Color(0xFF1E365C);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textTertiary = Color(0xFF555555);
  static const Color textHint = Color(0xFF777777);
  static const Color textAccent = Color(0xFFC69732);
  static const Color textInverse = Color(0xFFFFFFFF);
  static const Color textBlack = Color(0xFF000000);
  static Color textHighContrast = const Color(0xFF212529).withOpacity(0.75);

  // ==========================================
  // STROKES / BORDERS
  // ==========================================
  static const Color strokeDefault = Color(0xFFDEDEDE);

  // ==========================================
  // STATUS / UNLINKED UTILITY COLORS
  // ==========================================
  /// Extracted from unlinked D43839
  static const Color error = Color(0xFFD43839);
  
  /// Extracted from unlinked 4CAF50 / 1DC9A0
  static const Color success = Color(0xFF4CAF50);
  static const Color successAlt = Color(0xFF1DC9A0);

  // ==========================================
  // COMMON OPACITIES (Extracted from unlinked blacks)
  // ==========================================
  static Color blackOverlay = const Color(0xFF000000).withOpacity(0.36);
  static Color blackBarrier = const Color(0xFF000000).withOpacity(0.25);
  static Color shadowSubtle = const Color(0xFF000000).withOpacity(0.08);
}