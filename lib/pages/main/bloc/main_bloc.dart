import 'package:delivery/data/models/new_dish.dart';
import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final DishRepository dishRepository;


  MainBloc(this.dishRepository) : super(MainInitialState()) {

    on<MainFetchEvent>((event, emit) async {
      emit(state.copyWith(isloading: true));
      final listRecommendedDish = await dishRepository.getRecommendedDish();
      final listFavoritesDish = await dishRepository.getFavoritesDish();
      final listTheBestDish = await dishRepository.getTheBestDish();
      final listPopularDish = await dishRepository.getPopularDish();

      emit(state.copyWith(
        recommendedDishes: listRecommendedDish,
        popularDishes: listPopularDish,
        favoritesDishes: listFavoritesDish,
        theBestDishes: listTheBestDish,
        isloading: false,
      ));
    });

    on<AddToCartEvent>((event, emit) async {
      final updatedDish = await dishRepository.updatedCountDish(
        state.dish!.dishId,
        state.dish!.count+1,
      );
      emit(state.copyWith(dish: updatedDish));
    });

  }
}
