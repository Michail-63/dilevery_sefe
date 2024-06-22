part of 'dish_bloc.dart';

class DishState {
  final bool isloading;
  final List<Review> reviews;
  final NewDish? dish;
  final int count;

  DishState({
    required this.reviews,
    required this.isloading,
    required this.dish,
    required this.count,
  });

  DishState copyWith({
    List<Review>? reviews,
    bool? isloading,
    NewDish? dish,
    int? count,
  }) {
    return DishState(
      count: count ?? this.count,
      dish: dish ?? this.dish,
      reviews: reviews ?? this.reviews,
      isloading: isloading ?? this.isloading,
    );
  }

  @override
  List<Object?> get props => [
        dish,
        isloading,
        reviews,
        count,
      ];
}

final class DishInitialState extends DishState {
  DishInitialState()
      : super(
          reviews: [],
          dish: null,
          isloading: true,
          count: 0,
        );
}
