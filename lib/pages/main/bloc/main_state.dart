part of 'main_bloc.dart';

class MainState {
  final List<NewDish> recommendedDishes;
  final bool isloading;

  MainState({
    required this.recommendedDishes,
    required this.isloading,
  });

  MainState copyWith({
    List<NewDish>? recommendedDishes,
    bool? isloading,
  }) {
    return MainState(
      recommendedDishes: recommendedDishes ?? this.recommendedDishes,
      isloading: isloading ?? this.isloading,
    );
  }

  @override
  List<Object?> get props => [recommendedDishes, isloading];
}

final class MainInitial extends MainState {
  MainInitial()
      : super(
          recommendedDishes: [],
          isloading: false,
        );
}
