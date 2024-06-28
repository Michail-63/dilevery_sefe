part of 'main_bloc.dart';

class MainEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class MainFetchEvent extends MainEvent {}

class AddToCartMainEvent extends MainEvent {
  final String dishId;

  AddToCartMainEvent(this.dishId);

  @override
  List<Object?> get props => [dishId];
}
