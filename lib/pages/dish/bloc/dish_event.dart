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

class ReviewDishEvent extends DishEvent {
  final String review;
  final int raiting;

  ReviewDishEvent({required this.review, required this.raiting});

  @override
  List<Object?> get props => [review, raiting];
}
