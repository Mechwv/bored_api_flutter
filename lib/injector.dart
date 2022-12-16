import 'package:bored_api/data/remote/data_sources/boring_service.dart';
import 'package:bored_api/domain/repositories/boring_repository.dart';
import 'package:bored_api/domain/use_cases/get_activity.dart';
import 'package:bored_api/presentation/pages/home/bloc/home/home_bloc.dart';
import 'package:get_it/get_it.dart';

import 'data/repositories/boring_repository_impl.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  injector.registerSingleton(BoringService());

  injector.registerSingleton<BoringRepository>(
    BoringRepositoryImpl(injector()),
  );

  injector.registerSingleton<GetActivity>(
      GetActivity(injector()));

  injector.registerFactory<HomeBloc>(
          () => HomeBloc(injector()));
}