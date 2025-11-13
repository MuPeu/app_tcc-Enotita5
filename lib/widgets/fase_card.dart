import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class FaseCard extends StatelessWidget {
  final String titulo;
  final String descricao;
  final String imagemUrl;
  final VoidCallback? onTap;

  const FaseCard({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.imagemUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 372,
        height: 100,
        child: Stack(
          children: [
            // Fundo do card
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  color: AppTheme.cardColor,
                ),
              ),
            ),

            // Imagem lateral
            Positioned(
              left: 10,
              top: 20,
              child: SizedBox(
                width: 60,
                height: 60,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagemUrl),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),

            // Título da fase
            Positioned(
              left: 85,
              top: 3,
              child: Text(
                titulo,
                style: const TextStyle(
                  color: AppTheme.accentColor,
                  fontSize: 40,
                  fontFamily: 'Lavishly Yours',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            // Descrição
            Positioned(
              left: 85,
              top: 45,
              child: SizedBox(
                width: 270,
                child: Text(
                  descricao,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Arial',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}