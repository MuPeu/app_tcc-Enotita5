import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/header.dart';
import '../utils/responsive_wrapper.dart';

class Fase4Page extends StatelessWidget {
  const Fase4Page({super.key});

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
                '../src/assets/imgs/fase4-header.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 225,
              ),
              Container(
                width: double.infinity,
                color: AppTheme.secondaryColor,
                padding: padding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'A Fuga',
                      style: TextStyle(
                        color: AppTheme.accentColor,
                        fontSize: ResponsiveWrapper.getFontSize(context, 50),
                        fontFamily: 'Lavishly Yours',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          height: 1.5,
                        ),
                        children: [
                          TextSpan(
                            text: "Resumo Geral: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text:
                                "Essa será a quarta e ultima fase do jogo ela será que irá concluir o jogo e tudo que foi apresentado aqui, nela o objetivo do player será antes que o tempo acabei fugir da casa que agora está em chama e colapsando após a derrota do Coelho Branco.\n\n",
                          ),
                          TextSpan(
                            text: "Ambientação e Estética: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "O que já foram cômodos e móveis, agora estavam em chamas, e os que não, acabaram soterrados pelos pedaços das paredes e do teto que agora estavam despencando por todos os lados do que um dia foi uma casa mais que agora se encontrava destruída.\n\n",
                          ),
                          TextSpan(
                            text: "Estrutura do Layout: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "A base da fase será uma linha reta cheia de obstáculos com formato de diferentes doces que agora se encontram destruídos e espalhados pelo caminho que o player deverá seguir.\n\n",
                          ),
                          TextSpan(
                            text: "Elementos de Jogabilidade: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "O player deverá usar as mecânicas aprendidas nas fase anteriores para conseguir desviar dos obstáculos que estarão espalhados, eles tem diferentes tamanhos formatos e forma de serem evitados, alguns o player deverá saltar por cima outros deverá passar pelo meio ou pelos lados e outros devem ser destruídos com o estilingue, se conseguir desviar de todos os obstáculos antes do tempo acabar.\n\n",
                          ),
                          TextSpan(
                            text: "Progressão e Desafios: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "A fase inteira se passará dentro da da casa colapsando, o player  deverá seguir por um caminho pré determinado enquanto desvia dos obstáculos , ao decorrer da fase aparecem mais obstáculos e a janela de ação para evita-los vai ser tornado mais curta já que o player terá um tempo limitado para conseguir fugir da casa. Se conseguir ele terminara a fase. Se não, deverá recomeçar a fase do início.",
                          ),
                        ],
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
                                '../src/assets/imgs/fase4-img${index + 1}.png',
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
                        fontFamily: 'Lavishly Yours',
                        fontSize: 40,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "A Fase 4 se passara exatamente no mesmo lugar que a 2, porém agora o Player deve fazer o caminho contrário até a porta de entrada da casa,  agora, a casa estará impedindo sua fuga.\nFazendo com que prateleiras caiam e doces desabem sobre você.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 45),
                    const Text(
                      "Inspiração:",
                      style: TextStyle(
                        color: AppTheme.accentColor,
                        fontFamily: 'Lavishly Yours',
                        fontSize: 40,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "A fase quatro é inspirada na última fase do jogo “Resident Evil 4” onde o protagonista Leon pilota um jet-ski por um caverna que está desmoronando , para sair desta caverna ele deve desviar dos obstáculos que estão em sua frente e nos que caem do teto , essa mecânica de correr enquanto desvia dos obstáculos é principal inspiração para a jogabilidade da desta fase.",
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
