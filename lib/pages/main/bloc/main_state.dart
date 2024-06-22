part of 'main_bloc.dart';

class MainState {
  final List<NewDish> recommendedDishes;
  final List<NewDish> popularDishes;
  final List<NewDish> favoritesDishes;
  final List<NewDish> theBestDishes;
  final NewDish? dish;
  final bool isloading;

  MainState({
    required this.recommendedDishes,
    required this.popularDishes,
    required this.theBestDishes,
    required this.favoritesDishes,
    required this.isloading,
    required this.dish,

  });

  MainState copyWith({
    List<NewDish>? recommendedDishes,
    List<NewDish>? popularDishes,
    final List<NewDish>? favoritesDishes,
    final List<NewDish>? theBestDishes,
    bool? isloading,
    NewDish? dish,
  }) {
    return MainState(
      dish: dish ?? this.dish,
      recommendedDishes: recommendedDishes ?? this.recommendedDishes,
      popularDishes: popularDishes ?? this.popularDishes,
      favoritesDishes: favoritesDishes ?? this.favoritesDishes,
      theBestDishes: theBestDishes ?? this.theBestDishes,
      isloading: isloading ?? this.isloading,
    );
  }

  @override
  List<Object?> get props =>
      [
        dish,
        recommendedDishes,
        popularDishes,
        theBestDishes,
        favoritesDishes,
        isloading,
      ];
}

final class MainInitialState extends MainState {
  MainInitialState()
      : super(
    recommendedDishes: [],
    popularDishes: [],
    favoritesDishes: [],
    theBestDishes: [],
    isloading: false,
    dish: null,
  );
}
