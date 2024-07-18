part of 'main_bloc.dart';

class MainState extends Equatable {
  final List<DishModel> recommendedDishes;
  final List<DishModel> popularDishes;
  // final List<NewDish> favoritesDishes;
  // final List<NewDish> theBestDishes;
  final bool isloading;

  MainState({
    required this.recommendedDishes,
    required this.popularDishes,
    // required this.theBestDishes,
    // required this.favoritesDishes,
    required this.isloading,

  });

  MainState copyWith({
    final List<DishModel>? recommendedDishes,
    final List<DishModel>? popularDishes,
    // final List<NewDish>? favoritesDishes,
    // final List<NewDish>? theBestDishes,
    bool? isloading,

  }) {
    return MainState(
      recommendedDishes: recommendedDishes ?? this.recommendedDishes,
      popularDishes: popularDishes ?? this.popularDishes,
      // favoritesDishes: favoritesDishes ?? this.favoritesDishes,
      // theBestDishes: theBestDishes ?? this.theBestDishes,
      isloading: isloading ?? this.isloading,
    );
  }

  @override
  List<Object?> get props =>
      [

        recommendedDishes,
        popularDishes,
        // theBestDishes,
        // favoritesDishes,
        isloading,
      ];
}

final class MainInitialState extends MainState {
  MainInitialState()
      : super(
    recommendedDishes: [],
    popularDishes: [],
    // favoritesDishes: [],
    // theBestDishes: [],
    isloading: false,

  );
}
