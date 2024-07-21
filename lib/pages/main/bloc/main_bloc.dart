import 'package:delivery/data/models/dish_model.dart';
import 'package:delivery/data/repositories/api_repository.dart';
import 'package:delivery/data/repositories/new_ dish_repository.dart';
import 'package:delivery/data/repositories/dish_to_cart_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  // final DishRepository dishRepository;
  final DishToCartRepository dishToCartRepository;
  final ApiRepository apiRepository;


  MainBloc(
    // this.dishRepository,
    this.dishToCartRepository,
    this.apiRepository,

  ) : super(MainInitialState()) {
    on<MainFetchEvent>((event, emit) async {
      emit(state.copyWith(isloading: true));

      await apiRepository. getDishList();
      // final listRecommendedDish = await dishRepository.getCategoryPizzaDishModal();
      //
      // final listPopularDish = await apiRepository.getCategoryDishModal();
      final listFavoritesDish = await apiRepository.getFavoriteDish();
      // final listTheBestDish = await dishRepository.getTheBestDish();
      // final listPopularDish = await dishRepository.getPopularDish();

      emit(state.copyWith(
        // recommendedDishes: listRecommendedDish,
        // popularDishes: listPopularDish,
        favoritesDishes: listFavoritesDish,
        // theBestDishes: listTheBestDish,
        isloading: false,
      ));
    });

    on<AddToCartMainEvent>((event, emit) async {
      await dishToCartRepository.AddCountToDish(event.dishId);
    });
  }
}
