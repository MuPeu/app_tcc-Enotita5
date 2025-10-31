import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/header.dart';

class Fase2Page extends StatelessWidget {
  const Fase2Page({super.key});

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
                left: 130,
                top: 355,
                child: Text(
                  'Casa de Doce',
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
                              'Nesta segunda fase, o jogador entra em uma casa construída de doces, onde descobre o uso do salto e do estilingue. O objetivo é libertar o irmão preso e escapar antes que o chão se desfaça.\n\n',
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
                              'A casa é colorida, feita de bolos, pirulitos e chocolate derretendo nas paredes. A luz do sol entra pelas janelas coloridas, criando reflexos mágicos.\n\n',
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
                              'A fase é dividida em três cômodos principais: cozinha, sala de brinquedos e caldeirão central. Cada um exige o uso de diferentes mecânicas de salto e precisão.\n\n',
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
                              'O jogador deve alternar entre pular sobre doces derretendo e usar o estilingue para quebrar correntes que prendem o irmão. Tempo e coordenação são essenciais.\n\n',
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
                              'Após libertar o irmão, o jogador deve correr até a saída antes que o chão se desfaça completamente. O final leva diretamente à fase 3: O Forno.\n',
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

              // Imagens
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
                    'Observe os pisos que afundam lentamente. Priorize os saltos mais longos e atire nas correntes prateadas com o estilingue antes que o chão desapareça.',
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
                    'Inspirada em "Hansel e Gretel" e "Candy Crush" — a estética doce e perigosa reforça o contraste entre o belo e o mortal.',
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
