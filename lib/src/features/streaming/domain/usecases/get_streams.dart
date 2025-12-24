import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/stream_entity.dart';
import '../repositories/streaming_repository.dart';

class GetStreams implements UseCase<List<StreamEntity>, NoParams> {
  final StreamingRepository repository;

  GetStreams(this.repository);

  @override
  Future<Either<Failure, List<StreamEntity>>> call(NoParams params) async {
    return await repository.getStreams();
  }
}
