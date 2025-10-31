import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/header.dart';
import '../utils/responsive_wrapper.dart';

class Fase1Page extends StatelessWidget {
  const Fase1Page({super.key});

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = ResponsiveWrapper.getCrossAxisCount(context);
    final padding = ResponsiveWrapper.getPadding(context);
    return Scaffold(
      backgroundColor: AppTheme.secondaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Header(title: 'Porta de Fergas'),

              Image.asset(
                '../src/assets/imgs/fase1-header.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 225,
              ),

              Container(
                width: double.infinity,
                color: AppTheme.secondaryColor,
                padding: padding, // padding responsivo
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'A Floresta',
                      style: TextStyle(
                        color: AppTheme.accentColor,
                        fontSize: ResponsiveWrapper.getFontSize(context, 42),
                        fontFamily: 'Lavishly Yours',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Primeira fase onde o jogador aprende as mecânicas básicas em um labirinto dentro de uma floresta densa.\nExplore os caminhos sombrios, descubra segredos escondidos e derrote as pequenas criaturas que guardam a entrada para o coração da floresta.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 40),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: crossAxisCount,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: 162 / 88,
                          ),
                          itemBuilder: (context, index) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                '../src/assets/imgs/fase1-img${index + 1}.png',
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 45),
                    const Text(
                      "Guia:",
                      style: TextStyle(
                        color: AppTheme.accentColor,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Nessa fase, o Player terá que atravessar a floresta se orientando por trilhas de terra, ele terá inicialmente 3 caminhos para escolher, mas as opções vão aumentar conforme avança.\nAo escolher o caminho errado, ele será teletransportado para o começo da fase.\nO segredo para avançar é escolher o caminho com mais árvores de Ferga em volta (As árvores de tronco branco e folhas douradas)",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 45),

                    const Text(
                      'A referencia principal para a primeira fase (Floresta) do jogo foi o primeiro jogo da série/manga Alice in Borderland chamado de Viver ou Morrer nele o protagonista da história Arisu e mais quatro pessoas  tem que escolher entre duas portas uma escrita viver e outra morrer, utilizando esse jogo como referencia foi montado o puzzle dos caminhos na floresta onde o jogador terá dois ou mais caminhos e terá que escolher entre eles assim como Arisu seus amigos, a diferença é que se o jogador errar o caminho ele apenas volta para o início diferente da série/manga onde os personagens são "eliminados".',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 30),

                    ElevatedButton.icon(
                      onPressed: () => Navigator.pushNamed(context, '/home'),
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('Voltar'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.accentColor,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 24),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
