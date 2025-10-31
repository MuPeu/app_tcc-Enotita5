import 'package:flutter/material.dart';
import '../utils/responsive_wrapper.dart';
import '../theme/app_theme.dart';
import '../widgets/header.dart';
import '../widgets/fase_card.dart';
import '../widgets/section_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.secondaryColor,
      body: SafeArea(
        child: Column(
          spacing: 35,
          children: [
            const Header(title: 'Porta de Fergas'),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/fase1'),
                        child: const FaseCard(
                          titulo: 'A Floresta',
                          descricao:
                              'Primeira fase onde o jogador aprende as mecânicas básicas em um labirinto dentro de uma floresta densa.',
                          imagemUrl: '../src/assets/imgs/icon-fase1.png',
                        ),
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/fase2'),
                        child: const FaseCard(
                          titulo: 'Casa de Doce',
                          descricao:
                              'Segunda fase — introduz o salto e o uso do estilingue para libertar o irmão preso.',
                          imagemUrl: '../src/assets/imgs/icon-fase2.png',
                        ),
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/fase3'),
                        child: const FaseCard(
                          titulo: 'O Forno',
                          descricao:
                              'Terceira fase — o jogador enfrenta o Coelho Branco dentro de uma arena metálica.',
                          imagemUrl: '../src/assets/imgs/icon-fase3.png',
                        ),
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/fase4'),
                        child: const FaseCard(
                          titulo: 'A Fuga',
                          descricao:
                              'Última fase — escapar da casa em chamas antes do tempo acabar.',
                          imagemUrl: '../src/assets/imgs/icon-fase4.png',
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ]
        ),
      ),

        // Footer fixo (use bottomNavigationBar para garantir que fique visível)
      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          height: 50,
          width: double.infinity,
          color: AppTheme.primaryColor,
          alignment: Alignment.center,
          child: const Text(
            '© 2025 App TCC',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Arial',
            ),
          ),
        ),
      ),
    );
  }
}