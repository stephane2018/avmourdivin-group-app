import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/stream_entity.dart';

abstract class StreamingRepository {
  Future<Either<Failure, List<StreamEntity>>> getStreams();
}
