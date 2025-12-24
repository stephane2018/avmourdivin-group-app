import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../auth/presentation/controllers/auth_controller.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authControllerProvider);

    // Écoute les changements pour la déconnexion
    ref.listen<AsyncValue>(
      authControllerProvider,
      (_, state) {
        if (!state.hasValue || state.value == null) {
          context.go('/'); // Redirige vers la page de connexion
        }
      },
    );

    return Scaffold(
      body: authState.when(
        data: (user) {
          if (user == null) {
            // Devrait être géré par le listener ci-dessus, mais c'est une sécurité
            return const Center(child: Text('Non connecté'));
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Text(user.name?.substring(0, 1) ?? 'U', style: const TextStyle(fontSize: 40)),
                ),
                const SizedBox(height: 20),
                Text(user.name ?? 'Utilisateur', style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 8),
                Text(user.email, style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    ref.read(authControllerProvider.notifier).logout();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Déconnexion'),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, st) => Center(child: Text('Erreur: ${err.toString()}')),
      ),
    );
  }
}
