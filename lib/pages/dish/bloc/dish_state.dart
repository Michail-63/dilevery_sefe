part of 'dish_bloc.dart';

class DishState {
  final int count;
  final List<Review> reviews;

  DishState({
    required this.count,
    required this.reviews,
  });

  DishState copyWith({
    int? count,
    List<Review>? reviews,
  }) {
    return DishState(
      count: count ?? this.count,
      reviews: reviews ?? this.reviews,
    );
  }
}

final class DishInitialState extends DishState {
  DishInitialState()
      : super(
          count: 0,
          reviews: [],
        );
}
