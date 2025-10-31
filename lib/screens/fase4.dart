import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/header.dart';

class Fase4Page extends StatelessWidget {
  const Fase4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 440,
          height: 1600,
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

              // Imagem principal (casa pegando fogo)
              const Positioned(
                left: 0,
                top: 100,
                child: SizedBox(
                  width: 440,
                  height: 225,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://placehold.co/440x225?text=A+Fuga"),
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
                  height: 1275,
                  decoration: BoxDecoration(color: AppTheme.secondaryColor),
                ),
              ),

              // Título
              Positioned(
                left: 155,
                top: 355,
                child: Text(
                  'A Fuga',
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
                              'Na fase final, o jogador deve escapar da casa em chamas enquanto tudo desaba ao redor. É o encerramento da jornada — a tensão máxima antes do renascimento dos personagens.\n\n',
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
                              'O cenário mistura fogo, fumaça e pedaços de doce derretido caindo do teto. Tons alaranjados e vermelhos predominam, com partículas brilhando no ar.\n\n',
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
                              'O jogador começa no andar superior e precisa descer até a porta de saída, desviando de desabamentos e focos de fogo. Cada corredor é um pequeno desafio de reação.\n\n',
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
                              'O fogo avança progressivamente. O jogador precisa agir rápido, empurrando obstáculos e abrindo caminho para a liberdade. Qualquer erro custa segundos preciosos.\n\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arial',
                          ),
                        ),
                        TextSpan(
                          text: 'Progressão e Desfecho: ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Ao alcançar a saída, o jogador encontra o irmão caído. Eles escapam juntos, olhando para a casa que desaba em chamas. Um último feixe de luz dourada revela a Porta de Fergas, encerrando a história.\n',
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

              // Imagens ilustrativas
              const Positioned(
                left: 45,
                top: 820,
                child: SizedBox(
                  width: 162,
                  height: 90,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://placehold.co/162x90?text=Chamas"),
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
                        image: NetworkImage("https://placehold.co/162x90?text=Saída"),
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
                    'Corra em linha reta, salte sobre os obstáculos e siga a luz dourada que guia a saída. O tempo é limitado e o fogo aumenta a cada segundo.',
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
                    'Inspirada em "Inside" e "Ori and the Blind Forest" — o simbolismo da destruição e do renascimento encerra a jornada com emoção e propósito.',
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
