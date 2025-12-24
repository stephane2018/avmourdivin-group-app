import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/login_controller.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = TextEditingController(text: 'test@test.com');
    final passwordController = TextEditingController(text: 'password');

    ref.listen<AsyncValue>(
      loginControllerProvider,
      (_, state) {
        if (state.hasError && !state.isLoading) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error.toString())),
          );
        }
         if (state.hasValue && state.value != null) {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('Succès'),
              content: Text('Bienvenue ${state.value!.name}'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        }
      },
    );

    final loginState = ref.watch(loginControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Connexion')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Mot de passe',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: loginState.isLoading
                  ? null
                  : () {
                      ref.read(loginControllerProvider.notifier).login(
                            emailController.text,
                            passwordController.text,
                          );
                    },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: loginState.isLoading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : const Text('Se connecter'),
            ),
          ],
        ),
      ),
    );
  }
}
