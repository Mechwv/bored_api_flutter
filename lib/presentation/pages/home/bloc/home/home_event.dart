part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class GetActivityEvent extends HomeEvent {
  final double? price;
  final double? accessibility;
  final String? type;
  final int? participants;

  const GetActivityEvent({this.price, this.accessibility, this.type, this.participants});


}
