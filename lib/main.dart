import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'src/features/auth/presentation/pages/login_screen.dart';
import 'src/features/auth/presentation/pages/register_screen.dart';
import 'src/features/home/presentation/pages/home_screen.dart';

// Pour l'instant, nous définissons une page d'accueil simple.
// Plus tard, cela sera remplacé par notre système de routage complet.
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
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

