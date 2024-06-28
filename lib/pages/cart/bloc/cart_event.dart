part of 'cart_bloc.dart';

@immutable
sealed class CartEvent extends Equatable {}

class CartFetchEvent extends CartEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class IncrementCartEvent extends CartEvent {
  final String dishId;

  IncrementCartEvent(this.dishId);

  @override
  List<Object?> get props => [dishId];
}

class DecrementCartEvent extends CartEvent {
  final String dishId;

  DecrementCartEvent(this.dishId);

  @override
  List<Object?> get props => [dishId];
}
