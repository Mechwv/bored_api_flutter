import 'package:bored_api/data/remote/models/api_response.dart';
import 'package:bored_api/domain/repositories/boring_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/error/failures.dart';
import '../../core/usecase/usecase.dart';

class GetActivity implements UseCase<ApiResponse, Params> {
  final BoringRepository repository;

  GetActivity(this.repository);

  @override
  Future<Either<Failure, ApiResponse>> call(Params params) async {
    return await repository.getActivity(
        params.type,
        params.participants,
        params.price,
        params.accessibility,
    );
  }
}

class Params extends Equatable {
  final String? type;
  final int? participants;
  final double? price;
  final double? accessibility;

  const Params({
    required this.type,
    required this.participants,
    required this.price,
    required this.accessibility,
  });

  @override
  List<Object?> get props => [type, participants, price, accessibility];
}