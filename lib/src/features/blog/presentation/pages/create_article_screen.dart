import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../auth/presentation/controllers/auth_controller.dart';
import '../controllers/articles_controller.dart';
import '../controllers/create_article_controller.dart';

class CreateArticleScreen extends ConsumerWidget {
  const CreateArticleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final titleController = TextEditingController();
    final contentController = TextEditingController();

    ref.listen<AsyncValue>(
      createArticleControllerProvider,
      (_, state) {
        if (state.hasError && !state.isLoading) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Erreur: ${state.error}')),
          );
        }
        if (state.hasValue && state.value != null) {
          // Invalide le provider de la liste pour la rafraîchir
          ref.invalidate(articlesControllerProvider);
          context.pop(); // Retourne à l'écran précédent
        }
      },
    );

    final createArticleState = ref.watch(createArticleControllerProvider);
    final currentUser = ref.watch(authControllerProvider).value;

    return Scaffold(
      appBar: AppBar(title: const Text('Nouvel Article')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: 'Titre',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Veuillez entrer un titre' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: contentController,
                decoration: const InputDecoration(
                  labelText: 'Contenu',
                  border: OutlineInputBorder(),
                ),
                maxLines: 8,
                validator: (value) =>
                    value!.isEmpty ? 'Veuillez entrer du contenu' : null,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: createArticleState.isLoading
                    ? null
                    : () {
                        if (formKey.currentState!.validate() && currentUser != null) {
                          ref
                              .read(createArticleControllerProvider.notifier)
                              .createArticle(
                                title: titleController.text,
                                content: contentController.text,
                                authorId: currentUser.id,
                              );
                        }
                      },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: createArticleState.isLoading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text('Publier'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
