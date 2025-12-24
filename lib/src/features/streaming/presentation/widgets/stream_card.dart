import 'package:flutter/material.dart';

import '../../domain/entities/stream_entity.dart';

class StreamCard extends StatelessWidget {
  final StreamEntity stream;

  const StreamCard({super.key, required this.stream});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                stream.thumbnailUrl,
                height: 225,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const SizedBox(
                  height: 225,
                  child: Center(child: Icon(Icons.image_not_supported)),
                ),
              ),
              if (stream.isLive)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Chip(
                    label: const Text('LIVE'),
                    backgroundColor: Colors.red,
                    labelStyle: const TextStyle(color: Colors.white),
                    padding: EdgeInsets.zero,
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stream.title,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.person_outline, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(stream.channelName, style: Theme.of(context).textTheme.bodyMedium),
                    const Spacer(),
                    const Icon(Icons.visibility_outlined, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text('${stream.viewers} spectateurs'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
