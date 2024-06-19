part of 'dish_bloc.dart';

class DishState {
  final bool isloading;
  final List<Review> reviews;
  final NewDish? dish;

  DishState({
    required this.reviews,
    required this.isloading,
    required this.dish,
  });

  DishState copyWith({
    List<Review>? reviews,
    bool? isloading,
    NewDish? dish,
  }) {
    return DishState(
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
      ];
}

final class DishInitialState extends DishState {
  DishInitialState()
      : super(
          reviews: [],
          dish: null,
          isloading: true,
        );
}
