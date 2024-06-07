part of 'dish_bloc.dart';

class DishState {
  final bool isloading;
  final int count;
  final List<Review> reviews;
  final Dish dish;

  DishState({
    required this.count,
    required this.reviews,
    required this.isloading,
    required this.dish,

  });

  DishState copyWith({
    int? count,
    List<Review>? reviews,
    bool? isloading,
    Dish? dish,

  }) {
    return DishState(
      dish: dish ?? this.dish,
      count: count ?? this.count,
      reviews: reviews ?? this.reviews,
      isloading: isloading ?? this.isloading,



    );
  }

  @override
  List<Object?> get props => [dish, count, isloading, reviews];
}


final class DishInitialState extends DishState {
  DishInitialState()
      : super(
    count: 0,
    reviews: [],
    dish: Dish(text: '', title: '', price: 0, image: '',id: ''),
    isloading: false,


  );
}
