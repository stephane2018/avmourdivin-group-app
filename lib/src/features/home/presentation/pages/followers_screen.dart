import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../auth/domain/entities/user_entity.dart';
import '../../../followers/presentation/controllers/followers_controller.dart';
import '../../../followers/presentation/widgets/user_tile.dart';
import '../../../../shared/presentation/widgets/error_display.dart';

class FollowersScreen extends StatelessWidget {
  const FollowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const TabBar(
          tabs: [
            Tab(text: 'Abonnés'),
            Tab(text: 'Abonnements'),
          ],
        ),
        body: TabBarView(
          children: [
            _FollowersList(userId: '1'), // ID factice
            _FollowingList(userId: '1'), // ID factice
          ],
        ),
      ),
    );
  }
}

class _FollowersList extends ConsumerWidget {
  final String userId;
  const _FollowersList({required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final followersState = ref.watch(followersControllerProvider(userId));
    return followersState.when(
      data: (users) => ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => UserTile(user: users[index]),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, st) => ErrorDisplay(
        message: err.toString(),
        onRetry: () => ref.invalidate(followersControllerProvider(userId)),
      ),
    );
  }
}

class _FollowingList extends ConsumerWidget {
  final String userId;
  const _FollowingList({required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final followingState = ref.watch(followingControllerProvider(userId));
    return followingState.when(
      data: (users) => ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => UserTile(user: users[index]),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, st) => ErrorDisplay(
        message: err.toString(),
        onRetry: () => ref.invalidate(followingControllerProvider(userId)),
      ),
    );
  }
}
