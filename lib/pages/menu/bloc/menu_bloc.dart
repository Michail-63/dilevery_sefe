import 'package:bloc/bloc.dart';
import 'package:delivery/data/models/dish_model.dart';
import 'package:delivery/data/models/menu.dart';
import 'package:delivery/data/models/lists/list_menu.dart';
import 'package:delivery/data/repositories/dish_repository.dart';
import 'package:delivery/data/repositories/dish_to_cart_repository.dart';
import 'package:equatable/equatable.dart';
import "package:meta/meta.dart";

part 'menu_event.dart';

part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final DishRepository dishRepository;
  final DishToCartRepository dishToCartRepository;

  MenuBloc(
    this.dishToCartRepository,
    this.dishRepository,
  ) : super(MenuInitial()) {
    on<MenuEvent>((event, emit) async{
      final listCategoryDish = await dishRepository.getCategoryMenuDishModal();
      print('listCategoryDish: ${listCategoryDish?.length}');


      emit(state.copyWith(
        categoryDishes: listCategoryDish,

      ));

    });

    on<AddToCartMenuEvent>((event, emit) async {
      await dishToCartRepository.AddCountToDish(event.dishId);
    });
  }
}
