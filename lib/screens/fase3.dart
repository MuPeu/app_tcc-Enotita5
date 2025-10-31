import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/header.dart';

class Fase3Page extends StatelessWidget {
  const Fase3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 440,
          height: 1550,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              // Cabeçalho
              const Positioned(
                left: 0,
                top: 0,
                child: Header(title: 'Porta de Fergas'),
              ),

              // Imagem principal
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
                        fit: BoxFit.cover,
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
                  height: 1225,
                  decoration: BoxDecoration(color: AppTheme.secondaryColor),
                ),
              ),

              // Título
              Positioned(
                left: 150,
                top: 355,
                child: Text(
                  'O Forno',
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
                top: 400,
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
                              'Na terceira fase, o jogador enfrenta o Coelho Branco em um forno mecânico gigante. O cenário mistura engrenagens e fogo, exigindo controle preciso do tempo e reflexos.\n\n',
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
                              'A fase se passa dentro de um forno industrial com cores quentes e sombras projetadas pelas engrenagens. Há fumaça, luz avermelhada e chamas que surgem do chão.\n\n',
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
                              'Três níveis verticais conectados por plataformas móveis. O jogador deve ativar alavancas enquanto evita o fogo e os ataques do Coelho Branco.\n\n',
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
                              'O jogador deve usar saltos cronometrados, acionar engrenagens que desativam temporariamente o fogo e encontrar o ponto fraco do inimigo. Cada erro reinicia a sequência.\n\n',
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
                              'A luta final contra o Coelho Branco ocorre em um campo cercado por fogo. Ao derrotá-lo, o jogador destrava a fase 4: A Fuga.\n',
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
                top: 820,
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
                top: 820,
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
                top: 1060,
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
                top: 1100,
                child: SizedBox(
                  width: 334,
                  child: Text(
                    'Evite o fogo subindo nas plataformas móveis. Observe o padrão das chamas e dispare o estilingue nas engrenagens brilhantes para enfraquecer o inimigo.',
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
                top: 1300,
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
                top: 1340,
                child: SizedBox(
                  width: 334,
                  child: Text(
                    'Inspirada em "Cuphead" e "Little Nightmares II" — o fogo e as engrenagens criam tensão e movimento constantes no cenário.',
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
