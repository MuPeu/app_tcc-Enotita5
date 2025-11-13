import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/header.dart';
import '../utils/responsive_wrapper.dart';

class Fase2Page extends StatelessWidget {
  const Fase2Page({super.key});

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
                '../src/assets/imgs/fase2-header.png',
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
                      'Casa de Doces',
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
                            text: "Está fase será a Segunda do jogo, sendo por ela que o player aprenderá novas mecânicas como saltar e utilizar o estilingue, e tem como objetivo achar seu irmão Ary, enquanto pula entre os obstáculos espalhados que aparecem no seu caminho, é uma fase focada em resolver puzzles enquanto desvia de obstáculos.\n\n",
                          ),
                          TextSpan(
                            text: "Ambientação e Estética: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "A Casa de Doces por fora ela possui um tamanho normal com a aparência de uma simples cabana só que completamente feita por doces, por dentro ela tem um tamanho desproporcional comparado ao lado de fora, porém, ainda sendo feita de doces tendo uma sala e cozinha no mesmo cômodo com uma escada que leva até o segundo andar que por fora é possível identificar que se trata de um sótão.\n\n",
                          ),
                          TextSpan(
                            text: "Estrutura do Layout: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "A Casa é muito grande, porém está quase toda preenchida pelos grandes móveis o único lugar onde o player pode se mover são as prateleiras e estantes e armários que seguindo pelo caminho certo lê permitem se locomover pela grande cabana e resolver os puzzles para alcançar seu objetivo.\n\n",
                          ),
                          TextSpan(
                            text: "Elementos de Jogabilidade: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "O player terá que passar pelos obstáculos pela fase com as novas mecânicas introduzidas na fase atual, sendo o pulo que o permitirá passar por cima de obstáculos e o estilingue que o permitirá destruir e ativar pontos específicos pela fase o que liberara para o player o caminho que ele deve seguir.\n\n",
                          ),
                          TextSpan(
                            text: "Progressão e Desafios: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "Progressão e Desafios: a fase começa dentro da casa, onde o player deve achar a maneira de chegar até seu irmão que se encontra do outro lado da casa, a medida que avança pela fase os pulos vão se tornando mais difícil e estreito e o estilingue cada vez mais necessário, se errar um pulo e sair do caminho o player ele volta para o ultimo ponto de salvamento que ele tiver pego no caminho, se conseguir passar por todos os obstáculos e libertar seu irmão, o coelho irá aparecer e após uma conversa ele irá teletransportar o player para o que parece ser a parte de dentro de um forno de metal, onde se passara a fase 3.",
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
                                '../src/assets/imgs/fase2-img${index + 1}.png',
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
                      "Na fase 2 o Player terá que chegar a mesa gigante no outro lado da casa, ele deve escalar os móveis e pular até prateleiras na parede, e fazer parkour até chegar na mesa e resgatar seu irmão.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 45),
                    const Text(
                      "Inspirações:",
                      style: TextStyle(
                        color: AppTheme.accentColor,
                        fontFamily: 'Lavishly Yours',
                        fontSize: 40,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle, size: 8, color: Colors.white),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "O jogo Toy Story 3, usado como inspiração para os parkours e puzzles.",
                            style: TextStyle(color: Colors.white, fontSize: 16, height: 1.4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle, size: 8, color: Colors.white),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "Casa de doces: inspirada na icônica casa do conto João e Maria.",
                            style: TextStyle(color: Colors.white, fontSize: 16, height: 1.4),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.circle, size: 8, color: Colors.white),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Dimensão da casa: idealizada como sendo muito maior por dentro, semelhante à TARDIS de "Doctor Who".',
                            style: TextStyle(color: Colors.white, fontSize: 16, height: 1.4),
                          ),
                        ),
                      ],
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