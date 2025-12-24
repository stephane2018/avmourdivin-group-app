import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Pour l'instant, nous définissons une page d'accueil simple.
// Plus tard, cela sera remplacé par notre système de routage complet.
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnboardingScreen(),
    ),
  ],
);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'AmourDivin Group',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

// Écran de démarrage factice pour l'instant
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenue'),
      ),
      body: const Center(
        child: Text('Page d\'accueil/Onboarding'),
      ),
    );
  }
}
