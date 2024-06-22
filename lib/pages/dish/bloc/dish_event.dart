part of 'dish_bloc.dart';

abstract class DishEvent extends Equatable {}

class DishFetchEvent extends DishEvent {
  final String dishId;

  DishFetchEvent({required this.dishId});

  @override
  List<Object?> get props => [dishId];
}

class IncrementCountDishEvent extends DishEvent {
  IncrementCountDishEvent() {}
  @override
  List<Object?> get props => [];
}

class DecrementCountDishEvent extends DishEvent {
  DecrementCountDishEvent() {}
  @override
  List<Object?> get props => [];
}


class AddDishToCartEvent extends DishEvent {
  AddDishToCartEvent() {}
  @override
  List<Object?> get props => [];
}

class GetReviewDishEvent extends DishEvent {
  final String dishId;

  GetReviewDishEvent({
    required this.dishId,
  });

  @override
  List<Object?> get props => [dishId];
}

class DeleteReviewDishEvent extends DishEvent {
  final String dishId;

  DeleteReviewDishEvent({
    required this.dishId,
  });

  @override
  List<Object?> get props => [dishId];
}


class AddReviewDishEvent extends DishEvent {
  final String coment;
  final String dishId;
  final int rating;

  AddReviewDishEvent({
    required this.coment,
    required this.rating,
    required this.dishId,
  });

  @override
  List<Object?> get props => [coment, rating, dishId];
}
