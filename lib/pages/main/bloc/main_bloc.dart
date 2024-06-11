import 'package:delivery/data/models/new_dish.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  var repository;

  MainBloc(this.repository) : super(MainInitial()) {
    on<MainFetchEvent>((event, emit) async {
      emit(state.copyWith(isloading: true));
      final listRecommendedDish = await repository.getRecommendedDish();
      final listFavoritesDish = await repository.getFavoritesDish();
      final listTheBestDish = await repository.getTheBestDish();
      final listPopularDish = await repository.getPopularDish();

      emit(state.copyWith(
        recommendedDishes: listRecommendedDish,
        popularDishes: listPopularDish,
        favoritesDishes: listFavoritesDish,
        theBestDishes: listTheBestDish,
        isloading: false,
      ));
    });
  }
}
