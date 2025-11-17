import 'package:flutter/material.dart';
import 'dart:math';
import 'hambuger.dart';
import '../theme/app_theme.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({super.key, required this.title});

  static final GlobalKey headerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final double sideWidth = min(max(size.width * 0.12, 56), 120);
    
    return Container(
      key: Header.headerKey,
      width: double.infinity,
      height: 100,
      color: AppTheme.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          SizedBox(
            width: sideWidth,
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/home',
                    (route) => false,
                  );
                },
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
          ),
          Expanded(
            child: Center(
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: AppTheme.titleStyle.copyWith(
                    fontSize: 55,
                  ),
                ),
              ),
            ),
          ),
          HamburgerMenu(
            onItemSelected: (item) {
              debugPrint('Selecionado: ${item}');
            },
          ),
        ],
      ),
    );
  }
}