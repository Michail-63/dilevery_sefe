part of 'dish_bloc.dart';

abstract class DishEvent extends Equatable {}

class IncrementCountDishEvent extends DishEvent {
  @override
  List<Object?> get props => [];
}

class DecrementCountDishEvent extends DishEvent {
  @override
  List<Object?> get props => [];
}

class NewReviewDishEvent extends DishEvent {
  final String review;
  final int raiting;


  NewReviewDishEvent({required this.review, required this.raiting});

  @override
  List<Object?> get props => [review, raiting];
}
