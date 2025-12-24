import '../../domain/entities/group_entity.dart';
import 'groups_remote_data_source.dart';

class GroupsRemoteDataSourceImpl implements GroupsRemoteDataSource {
  @override
  Future<List<GroupEntity>> getGroups() async {
    // Simule un appel réseau
    await Future.delayed(const Duration(seconds: 1));

    return [
      GroupEntity(
        id: '1',
        name: 'Amoureux de la nature',
        description: 'Un groupe pour partager notre passion pour la nature et les activités en plein air.',
        createdBy: '1',
        bannerUrl: 'https://picsum.photos/seed/nature/400/150',
        members: ['1', '2', '3'],
      ),
      GroupEntity(
        id: '2',
        name: 'Club de lecture',
        description: 'Discussions mensuelles sur des livres de tous genres.',
        createdBy: '2',
        bannerUrl: 'https://picsum.photos/seed/books/400/150',
        members: ['2', '4'],
      ),
      GroupEntity(
        id: '3',
        name: 'Cuisine du monde',
        description: 'Partage de recettes et d\'expériences culinaires du monde entier.',
        createdBy: '3',
        bannerUrl: 'https://picsum.photos/seed/food/400/150',
        members: ['1', '3', '4', '5'],
      ),
    ];
  }
}
