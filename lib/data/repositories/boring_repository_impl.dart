import 'package:bored_api/core/error/failures.dart';
import 'package:bored_api/data/remote/models/api_response.dart';
import 'package:bored_api/domain/repositories/boring_repository.dart';
import 'package:dartz/dartz.dart';

import '../remote/data_sources/boring_service.dart';

class BoringRepositoryImpl extends BoringRepository {
  final BoringService _boringService;

  BoringRepositoryImpl(this._boringService);

  Future<Either<Failure, ApiResponse>> getActivity(String? type,
      int? participants,
      double? price,
      double? accessibility) async {
    ApiResponse model =
    (await _boringService.getWeatherLocation(
        type, participants, price, accessibility))!;

    return Right(model);
  }
}