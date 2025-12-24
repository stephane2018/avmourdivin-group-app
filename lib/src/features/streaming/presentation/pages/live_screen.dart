import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/streams_controller.dart';
import '../widgets/stream_card.dart';

class LiveScreen extends ConsumerWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamsState = ref.watch(streamsControllerProvider);

    return Scaffold(
      body: streamsState.when(
        data: (streams) => ListView.builder(
          itemCount: streams.length,
          itemBuilder: (context, index) {
            final stream = streams[index];
            return StreamCard(stream: stream);
          },
        ),
        // Pour la simplicité, nous utilisons un CircularProgressIndicator ici,
        // mais un squelette similaire à celui des articles pourrait être créé.
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Text('Erreur: ${error.toString()}'),
        ),
      ),
    );
  }
}
