import 'package:flutter/material.dart';

class ResponsiveWrapper {
  // Breakpoints
  static const double mobileMaxWidth = 599;
  static const double tabletMaxWidth = 899;
  static const double desktopMinWidth = 900;

  /// Verifica se é Mobile
  static bool isMobile(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width <= mobileMaxWidth;
  }

  /// Verifica se é Tablet
  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width > mobileMaxWidth && width <= tabletMaxWidth;
  }

  /// Verifica se é Desktop
  static bool isDesktop(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= desktopMinWidth;
  }

  /// Retorna o número de colunas para GridView
  static int getCrossAxisCount(BuildContext context) {
    if (isDesktop(context)) return 4;
    if (isTablet(context)) return 3;
    return 2; // mobile
  }

  /// Retorna padding responsivo
  static EdgeInsets getPadding(BuildContext context) {
    if (isDesktop(context)) return EdgeInsets.all(32);
    if (isTablet(context)) return EdgeInsets.all(24);
    return EdgeInsets.all(16); // mobile
  }

  /// Retorna tamanho da fonte responsivo
  static double getFontSize(BuildContext context, double baseFontSize) {
    final width = MediaQuery.of(context).size.width;
    if (isDesktop(context)) return baseFontSize * 1.4;
    if (isTablet(context)) return baseFontSize * 1.2;
    return baseFontSize; // mobile
  }

  /// Retorna tamanho de imagem responsivo
  static double getImageSize(BuildContext context, double baseSize) {
    final width = MediaQuery.of(context).size.width;
    if (isDesktop(context)) return baseSize * 1.4;
    if (isTablet(context)) return baseSize * 1.2;
    return baseSize; // mobile
  }
}