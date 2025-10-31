import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/header.dart';

class Fase1Page extends StatelessWidget {
  const Fase1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 440,
          height: 1529,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              // Fundo superior azul
              const Positioned(
                left: 0,
                top: 0,
                child: Header(title: 'Porta de Fergas'),
              ),

              // Imagem de topo
              const Positioned(
                left: 0,
                top: 100,
                child: SizedBox(
                  width: 440,
                  height: 225,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://placehold.co/440x225"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),

              // Fundo marrom
              Positioned(
                left: 0,
                top: 325,
                child: Container(
                  width: 440,
                  height: 1204,
                  decoration: BoxDecoration(color: AppTheme.secondaryColor),
                ),
              ),

              // Título da Fase
              Positioned(
                left: 138,
                top: 355,
                child: Text(
                  'A Floresta',
                  style: TextStyle(
                    color: AppTheme.accentColor,
                    fontSize: 42,
                    fontFamily: 'Lavishly Yours',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              // Texto principal
              const Positioned(
                left: 33,
                top: 399,
                child: SizedBox(
                  width: 373,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Resumo Geral: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Esta fase será a primeira do jogo, onde o jogador aprenderá o básico das mecânicas. O objetivo é encontrar o caminho correto em um labirinto formado por uma floresta densa, resolvendo puzzles sob a luz do sol.\n\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arial',
                          ),
                        ),
                        TextSpan(
                          text: 'Ambientação e Estética: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text:
                              'A floresta é densa e labiríntica. Entre as árvores, só há caminhos cobertos por neblina que se dissipa lentamente sob o sol do meio-dia.\n\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arial',
                          ),
                        ),
                        TextSpan(
                          text: 'Estrutura do Layout: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text:
                              'A fase é composta por múltiplas salas interligadas por caminhos que levam a interseções, aumentando a dificuldade conforme o jogador avança.\n\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arial',
                          ),
                        ),
                        TextSpan(
                          text: 'Elementos de Jogabilidade: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Ao escolher o caminho errado, o jogador será teletransportado de volta ao início da primeira sala.\n\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arial',
                          ),
                        ),
                        TextSpan(
                          text: 'Progressão e Desafios: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text:
                              'A fase começa em uma trilha com três caminhos possíveis. Escolhas erradas levam ao reinício. Acertando a sequência correta, o jogador avança até a Casa de Doces, início da fase 2.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arial',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Imagens da fase
              const Positioned(
                left: 45,
                top: 764,
                child: SizedBox(
                  width: 162,
                  height: 90,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://placehold.co/162x90"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 232,
                top: 764,
                child: SizedBox(
                  width: 162,
                  height: 90,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://placehold.co/162x90"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),

              // Guia
              Positioned(
                left: 45,
                top: 1016,
                child: Text(
                  'Guia:',
                  style: TextStyle(
                    color: AppTheme.accentColor,
                    fontSize: 36,
                    fontFamily: 'Lavishly Yours',
                  ),
                ),
              ),
              const Positioned(
                left: 60,
                top: 1059,
                child: SizedBox(
                  width: 334,
                  child: Text(
                    'O jogador deve seguir trilhas observando as Árvores de Ferga — troncos brancos e folhas douradas — como pistas. Caminhos errados retornam ao início.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Arial',
                    ),
                  ),
                ),
              ),

              // Inspirações
              Positioned(
                left: 45,
                top: 1250,
                child: Text(
                  'Inspirações:',
                  style: TextStyle(
                    color: AppTheme.accentColor,
                    fontSize: 36,
                    fontFamily: 'Lavishly Yours',
                  ),
                ),
              ),
              const Positioned(
                left: 60,
                top: 1293,
                child: SizedBox(
                  width: 334,
                  child: Text(
                    'Inspirada em "Alice in Borderland" — na fase onde os personagens devem escolher entre duas portas ("viver" e "morrer"). Aqui, o erro apenas reinicia o percurso.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Arial',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
