import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../groups/presentation/controllers/groups_controller.dart';
import '../../../groups/presentation/widgets/group_card.dart';
import '../../../groups/presentation/widgets/group_card_skeleton.dart';

class GroupsScreen extends ConsumerWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupsState = ref.watch(groupsControllerProvider);

    return Scaffold(
      body: groupsState.when(
        data: (groups) => ListView.builder(
          itemCount: groups.length,
          itemBuilder: (context, index) {
            final group = groups[index];
            return GroupCard(group: group);
          },
        ),
        loading: () => ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => const GroupCardSkeleton(),
        ),
        error: (error, stackTrace) => Center(
          child: Text('Erreur: ${error.toString()}'),
        ),
      ),
    );
  }
}
