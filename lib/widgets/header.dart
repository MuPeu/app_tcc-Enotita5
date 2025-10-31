import 'package:flutter/material.dart';
import 'dart:math';
import '../theme/app_theme.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // calcula largura das "laterais" (proporcional, mas limitada)
    final double sideWidth = min(max(size.width * 0.12, 56), 120);
    // explicação: no mínimo 56px, no máximo 120px; ajusta conforme largura da tela

    return Container(
      width: double.infinity,
      height: 100,
      color: AppTheme.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          // Lado esquerdo (logo) — largura fixa = sideWidth
          SizedBox(
            width: sideWidth,
            child: Align(
              alignment: Alignment.centerLeft,
              child: AspectRatio(
                aspectRatio: 1,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("src/assets/imgs/logo.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Centro — ocupa o espaço restante; título centralizado exatamente no meio
          Expanded(
            child: Center(
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: AppTheme.titleStyle.copyWith(
                    fontSize: 28, // tamanho fixo que você deseja
                  ),
                ),
              ),
            ),
          ),

          // Lado direito (menu) — mesma largura = sideWidth
          SizedBox(
            width: sideWidth,
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: min(40, sideWidth * 0.9),
                height: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Container(
                        width: 30,
                        height: 3,
                        color: Colors.white,
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}