import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/header.dart';
import '../utils/responsive_wrapper.dart';

class Fase3Page extends StatelessWidget {
  const Fase3Page({super.key});

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
                '../src/assets/imgs/fase3-header.png',
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
                      'O Forno',
                      style: TextStyle(
                        color: AppTheme.accentColor,
                        fontSize: ResponsiveWrapper.getFontSize(context, 42),
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
                            text: "Essa será a terceira fase do jogo onde o player deverá utilizar todas as mecânicas que aprendeu nas fases anteriores para derrotar o Coelho Branco e conseguir sair de dentro do forno o que dará início a fase quatro.\n\n",
                          ),
                          TextSpan(
                            text: "Ambientação e Estética: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "O forno parcial quase como outra realidade ,as paredes revelavam que ele era completamente feito de ferro negro, porém dentro parecia o interior de um maquinário muito avançado cheio de válvulas e engrenagens por todo lado. ele parecia ser grande mais com todas as peças mecânicas se tornava quase como uma arena com os dois no meio dela.\n\n",
                          ),
                          TextSpan(
                            text: "Estrutura do Layout: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "A fase é aberta com engrenagens e válvulas por toda parte o que impede a movimentação fora do parece ser mais uma arena.\n\n",
                          ),
                          TextSpan(
                            text: "Elementos de Jogabilidade: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "O player deverá usar as mecânicas aprendidas em conjunto para conseguir derrotar o Coelho Branco, o player deverá utilizar a movimentação e o pulo para desviar dos ataques do coelho e o estilingue será utilizado para atirar nas válvulas próximas ao coelho o que o deixara incapacitado por tempo suficiente para o player ataca-lo com o estilingue.\n\n",
                          ),
                          TextSpan(
                            text: "Progressão e Desafios: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(
                            text: "A fase inteira irá se passar inteira dentro do forno que possui o formato de uma arena circular ,o player deverá atirar nas válvulas ao redor da fase no momento certo para incapacitar o Coelho, o que o dará tempo o suficiente para ataca-lo após repetir esse ciclo algumas vezes o Coelho será Derrotado o que levará o player de volta para casa de doces onde se passará a fase quatro que será a última do jogo.",
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
                                '../src/assets/imgs/fase3-img${index + 1}.png',
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
                      "A terceira fase se passara dentro de um forno, onde a protagonista enfrentara o coelho responsável pelo sequestro de seu irmão. A cena é composta por válvulas, engrenagens e componentes mecânicos, que rodeiam o centro circular do forno, formando uma espécie de arena. Todo o ambiente é fechado e claustrofóbico, Amelie enfrentara o coelho em um combate direto, ao redor da arena, haverão válvulas em varias direções, o objetivo é atrair o inimigo até  perto de uma válvula , em seguida, atirar nela e provocar uma jorrada de vapor que acertara o coelho e o deixará incapacitado por alguns segundos, que será quando você deve atacar o coelho o máximo possível até derrota-lo.",
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
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "A fase três é inspirada na penúltima fase do jogo resident evill 3 remake onde a protagonista Jill luta contra seu inimigo chamado Nêmesis em sua forma animalesca e para derotalo ela deve atirar em botões localizados em baterias gigantes para que elas descaregem sua energia no Nêmesis na ora certa para que ele fique atordoado e ela possa atirar nele, iremos utilizar essa mecânica de maneira similar, o jogador deverá atirar em valvular no momento exato para atordoar seu inimigo assim como na inspiração.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton.icon(
                      onPressed: () => Navigator.pop(context),
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
