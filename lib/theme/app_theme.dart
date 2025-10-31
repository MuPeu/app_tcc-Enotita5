import 'package:flutter/material.dart';

class AppTheme {
  // 🎨 Paleta de Cores
  static const Color primaryColor = Color(0xFF144B5D); // Azul topo
  static const Color secondaryColor = Color(0xFF2B1603); // Marrom fundo
  static const Color accentColor = Color(0xFFB58B00); // Dourado
  static const Color cardColor = Color(0xFF773E08); // Marrom dos cards

  // 🖋️ Fontes e Estilos
  static const TextStyle titleStyle = TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontFamily: 'Lavishly Yours',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle sectionTitleStyle = TextStyle(
    color: accentColor,
    fontSize: 36,
    fontFamily: 'Lavishly Yours',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyStyle = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontFamily: 'Arial',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle boldBodyStyle = TextStyle(
    color: Colors.white,
    fontSize: 12,
    fontFamily: 'Arial',
    fontWeight: FontWeight.w700,
  );
}
