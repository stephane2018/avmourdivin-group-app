import 'package:flutter/material.dart';

import '../../../auth/domain/entities/user_entity.dart';

class UserTile extends StatelessWidget {
  final UserEntity user;

  const UserTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(user.name?.substring(0, 1) ?? 'U'),
      ),
      title: Text(user.name ?? 'Utilisateur inconnu'),
      subtitle: Text(user.email),
      trailing: IconButton(
        icon: const Icon(Icons.person_add_alt_1_outlined),
        onPressed: () {
          // Logique pour suivre/ne plus suivre l'utilisateur
        },
      ),
    );
  }
}
