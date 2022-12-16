import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bored_api/data/remote/models/api_response.dart';
import 'package:equatable/equatable.dart';

import '../../../../../domain/use_cases/get_activity.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final GetActivity _getActivity;

  HomeBloc(this._getActivity)
      : super(const HomeInitialState()) {
    on<GetActivityEvent>((_onGetActivity));
  }

  Future<void> _onGetActivity(GetActivityEvent event,
      Emitter<HomeState> emit,) async {
    emit(const HomeLoadingState());
    await Future.delayed(const Duration(seconds: 1));
    final result = await _getActivity(Params(type: event.type,
        participants: event.participants,
        price: event.price,
        accessibility: event.accessibility));
    emit(result.fold((l) => null, (r) => HomeSuccessState(response: r))!);
  }
}
