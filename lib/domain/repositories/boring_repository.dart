import 'package:bored_api/data/remote/models/api_response.dart';
import 'package:dartz/dartz.dart';

import '../../core/error/failures.dart';

abstract class BoringRepository {
  Future<Either<Failure, ApiResponse>> getActivity(
      String? type, int? participants, double? price, double? accessibility);
}
