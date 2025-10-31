import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/fase1.dart';
import 'screens/fase2.dart';
import 'screens/fase3.dart';
import 'screens/fase4.dart';

void main() {
  runApp(const AppTCC());
}

class AppTCC extends StatelessWidget {
  const AppTCC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App TCC',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/fase1': (context) => const Fase1Page(),
        '/fase2': (context) => const Fase2Page(),
        '/fase3': (context) => const Fase3Page(),
        '/fase4': (context) => const Fase4Page(),
      },
    );
  }
}
